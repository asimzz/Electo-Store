import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/products/i_proudct_repository.dart';
import 'package:electo_store/domain/products/product_failure.dart';
import 'package:electo_store/infastructure/products/product_results_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'product_watcher_event.dart';
part 'product_watcher_state.dart';
part 'product_watcher_bloc.freezed.dart';

@injectable
class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final IProductRepository _productRepository;
  final SharedPreferences _sharedPreferences;

  ProductWatcherBloc(
    this._productRepository,
    this._sharedPreferences,
  ) : super(ProductWatcherState.initial());

  @override
  Stream<ProductWatcherState> mapEventToState(
    ProductWatcherEvent event,
  ) async* {
    yield* event.map(
      watchProducts: (e) async* {
        yield const ProductWatcherState.loadInProgress();
        final productResult = await _productRepository.watchAll();
        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
      watchProductsWithPageNumberSpecified: (e) async* {
        yield const ProductWatcherState.loadInProgress();
        final productResult = await _productRepository.watchWithPageNumber(
          pageNumber: e.pageNumber,
        );
        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
      watchProductsWithSortTypeSpecified: (e) async* {
        yield const ProductWatcherState.loadInProgress();
        final productResult = await _productRepository.watchWithSortType(
          sortField: e.sortField,
          sortType: e.sortType,
        );

        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
      watchProductsWithPageNumberAndSortType: (e) async* {
        yield const ProductWatcherState.loadInProgress();
        final productResult =
            await _productRepository.watchWithPageNumberAndSortType(
          pageNumber: e.pageNumber,
          sortType: e.sortType,
        );

        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
    );
  }

  Stream<ProductWatcherState> _performActionOnProductWatcherBlocRepository({
    Either<ProductFailure, ProductsResultModel> productResult,
  }) async* {
    yield productResult.fold(
      (failure) => ProductWatcherState.loadFailure(failure),
      (products) => ProductWatcherState.loadSuccess(products),
    );
  }
}

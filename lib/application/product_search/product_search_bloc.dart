import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/products/i_proudct_repository.dart';
import 'package:electo_store/domain/products/product_failure.dart';
import 'package:electo_store/infastructure/products/product_results_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_search_event.dart';
part 'product_search_state.dart';
part 'product_search_bloc.freezed.dart';

@injectable
class ProductSearchBloc extends Bloc<ProductSearchEvent, ProductSearchState> {
  final IProductRepository productRepository;
  ProductSearchBloc(this.productRepository)
      : super(ProductSearchState.initial());

  @override
  Stream<ProductSearchState> mapEventToState(
    ProductSearchEvent event,
  ) async* {
    yield* event.map(
      searchProductsWithName: (e) async* {
        yield ProductSearchState.searchInProgress();
        final productResult = await productRepository.searchProductsWithQuery(
            query: e.productQuery);

        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
      searchProductsWithNameAndPageNumber: (e) async* {
        yield ProductSearchState.searchInProgress();
        final productResult =
            await productRepository.searchProductsWithQueryAndPageNumber(
          query: e.productQuery,
          pageNumber: e.pageNumber,
        );

        yield* _performActionOnProductWatcherBlocRepository(
          productResult: productResult,
        );
      },
    );
  }

  Stream<ProductSearchState> _performActionOnProductWatcherBlocRepository({
    Either<ProductFailure, ProductsResultModel> productResult,
  }) async* {
    yield productResult.fold(
      (failure) => ProductSearchState.searchFailure(failure),
      (products) => ProductSearchState.searchSuccess(products),
    );
  }
}

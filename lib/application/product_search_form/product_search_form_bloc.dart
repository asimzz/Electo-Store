import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/products/i_proudct_repository.dart';
import 'package:electo_store/domain/products/product._search.dart';
import 'package:electo_store/domain/products/product_failure.dart';
import 'package:electo_store/domain/products/value_objects.dart';
import 'package:electo_store/infastructure/products/product_results_model.dart';
import 'package:electo_store/infastructure/products/product_search_result.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_search_form_event.dart';
part 'product_search_form_state.dart';
part 'product_search_form_bloc.freezed.dart';

@injectable
class ProductSearchFormBloc
    extends Bloc<ProductSearchFormEvent, ProductSearchFormState> {
  final IProductRepository productRepository;
  ProductSearchFormBloc(this.productRepository)
      : super(ProductSearchFormState.initial());

  @override
  Stream<ProductSearchFormState> mapEventToState(
    ProductSearchFormEvent event,
  ) async* {
    yield* event.map(
      keywordChanged: (e) async* {
        yield state.copyWith(
          productSearch: state.productSearch.copyWith(
            keyword: Keyword(e.keywordStr),
          ),
          searchFailureOrSuccessOption: none(),
        );
      },
      priceRangeValuesChanged: (e) async* {
        yield state.copyWith(
            productSearch: state.productSearch.copyWith(
          priceRangeValues: e.priceRangeValues,
        ));
      },
      ratingRangeValuesChanged: (e) async* {
        yield state.copyWith(
            productSearch: state.productSearch.copyWith(
          ratingRangeValues: e.ratingRangeValues,
        ));
      },
      productSearchButtonPressed: (e) async* {
        Either<ProductFailure, ProductSearchResult> failureOrSuccess;
        final isKeywordValid = state.productSearch.keyword.isValid();
        if (isKeywordValid) {
          yield state.copyWith(
            isSearching: true,
            searchFailureOrSuccessOption: none(),
          );
          failureOrSuccess = await productRepository.advancedSearchProducts(
            keyword: state.productSearch.keyword,
            priceRangeValues: state.productSearch.priceRangeValues,
            ratingRangeValues: state.productSearch.ratingRangeValues,
          );
          yield state.copyWith(
            isSearching: false,
            searchFailureOrSuccessOption: some(failureOrSuccess),
          );
        }
        yield state.copyWith(
          isSearching: false,
          showErrorMessages: true,
          searchFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}

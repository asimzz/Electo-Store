import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/products/product_failure.dart';
import 'package:electo_store/domain/products/value_objects.dart';
import 'package:electo_store/infastructure/products/product_results_model.dart';
import 'package:electo_store/infastructure/products/product_search_result.dart';
import 'package:flutter/material.dart';

abstract class IProductRepository {
  Future<Either<ProductFailure, ProductsResultModel>> watchAll();
  Future<Either<ProductFailure, ProductsResultModel>> watchWithSortType({
    @required String sortField,
    @required String sortType,
  });

  Future<Either<ProductFailure, ProductsResultModel>> watchWithPageNumber({
    @required String pageNumber,
  });
  Future<Either<ProductFailure, ProductsResultModel>> searchProductsWithQuery({
    @required String query,
  });
  Future<Either<ProductFailure, ProductSearchResult>> advancedSearchProducts({
    @required Keyword keyword,
    @required RangeValues priceRangeValues,
    @required RangeValues ratingRangeValues,
  });
  Future<Either<ProductFailure, ProductsResultModel>>
      searchProductsWithQueryAndPageNumber({
    @required String query,
    @required String pageNumber,
  });
  Future<Either<ProductFailure, ProductsResultModel>>
      watchWithPageNumberAndSortType({
    @required String pageNumber,
    @required String sortType,
  });
}

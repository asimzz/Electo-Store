import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/core/network/network_info.dart';
import 'package:electo_store/domain/products/i_proudct_repository.dart';
import 'package:electo_store/domain/products/product_failure.dart';
import 'package:electo_store/domain/products/value_objects.dart';
import 'package:electo_store/infastructure/core/token_key/token_key.dart';
import 'package:electo_store/infastructure/products/product_results_model.dart';
import 'package:electo_store/infastructure/products/product_search_result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const BASE_URL = 'https://electro-store-api.herokuapp.com/api/v1/products';

@LazySingleton(as: IProductRepository)
class ProductRepository implements IProductRepository {
  final http.Client client;
  final NetworkInfo networkInfo;
  final SharedPreferences sharedPreferences;
  ProductRepository(
    this.client,
    this.networkInfo,
    this.sharedPreferences,
  );
  @override
  Future<Either<ProductFailure, ProductsResultModel>> watchAll() async {
    return _performActionOnProductRepository(fullUrl: BASE_URL);
  }

  @override
  Future<Either<ProductFailure, ProductsResultModel>> watchWithSortType({
    String sortField,
    String sortType = '-1',
  }) async {
    if (sortType == '-1') {
      sortField = '-' + sortField;
    }
    final fullUrl = BASE_URL + '/?sort=$sortField';
    return _performActionOnProductRepository(fullUrl: fullUrl);
  }

  @override
  Future<Either<ProductFailure, ProductsResultModel>> watchWithPageNumber({
    String pageNumber,
  }) async {
    final fullUrl = BASE_URL + '/?page=$pageNumber';
    return _performActionOnProductRepository(fullUrl: fullUrl);
  }

  @override
  Future<Either<ProductFailure, ProductsResultModel>>
      watchWithPageNumberAndSortType({
    String pageNumber,
    String sortType,
  }) async {
    final fullUrl = BASE_URL + '/?page=$pageNumber&sort=$sortType';
    return _performActionOnProductRepository(fullUrl: fullUrl);
  }

  @override
  Future<Either<ProductFailure, ProductsResultModel>> searchProductsWithQuery({
    String query,
  }) {
    final fullUrl = BASE_URL + '/?search=$query';
    return _performActionOnProductRepository(fullUrl: fullUrl);
  }

  @override
  Future<Either<ProductFailure, ProductsResultModel>>
      searchProductsWithQueryAndPageNumber({
    String query,
    String pageNumber,
  }) {
    final fullUrl = BASE_URL + '/?search=$query&page=$pageNumber';
    return _performActionOnProductRepository(fullUrl: fullUrl);
  }

  @override
  Future<Either<ProductFailure, ProductSearchResult>> advancedSearchProducts({
    Keyword keyword,
    RangeValues priceRangeValues,
    RangeValues ratingRangeValues,
  }) async {
    final keywordStr = keyword.getOrCrash();
    final priceMin = priceRangeValues.start;
    final priceMax = priceRangeValues.end;
    final ratingMin = ratingRangeValues.start;
    final ratingMax = ratingRangeValues.end;
    const FULL_URL = BASE_URL + '/advancedSearch';
    if (await networkInfo.isConnected) {
      final response = await client.post(
        FULL_URL,
        headers: {
          "Content-type": "application/json",
          "Cookie": 'token=' + sharedPreferences.getString(TOKEN_KEY),
          "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
        },
        body: json.encode(
          {
            'keyword': keywordStr,
            'priceMin': priceMin,
            'priceMax': priceMax,
            'averageRatingMin': ratingMin,
            'averageRatingMax': ratingMax,
          },
        ),
      );
      if (response.statusCode == 200) {
        final productResults = ProductSearchResult.fromJson(
          json.decode(response.body),
        );
        print('did you reach here baby?? ${response.body}');

        if (productResults.data.length == 0)
          return left(ProductFailure.productNotFoundError());
        else
          return right(productResults);
      } else if (response.statusCode == 401) {
        return left(ProductFailure.notAuthorizedError());
      } else {
        return left(ProductFailure.serverError());
      }
    } else {
      return left(ProductFailure.badConnectionError());
    }
  }

  Future<Either<ProductFailure, ProductsResultModel>>
      _performActionOnProductRepository({
    String fullUrl,
  }) async {
    if (await networkInfo.isConnected) {
      final response = await client.get(
        fullUrl,
        headers: {
          "Cookie": 'token=' + sharedPreferences.getString(TOKEN_KEY),
          "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
        },
      );
      if (response.statusCode == 200) {
        final productResultModel = ProductsResultModel.fromJson(
          json.decode(response.body),
        );
        if (productResultModel.count == 0)
          return left(ProductFailure.productNotFoundError());
        else
          return right(productResultModel);
      } else if (response.statusCode == 401) {
        return left(ProductFailure.notAuthorizedError());
      } else {
        return left(ProductFailure.serverError());
      }
    } else {
      return left(ProductFailure.badConnectionError());
    }
  }
}

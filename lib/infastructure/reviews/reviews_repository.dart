import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:electo_store/infastructure/core/token_key/token_key.dart';
import 'package:electo_store/infastructure/core/user_id_key/user_id_key.dart';
import 'package:electo_store/infastructure/reviews/reviews_result_model.dart';
import 'package:http/http.dart' as http;
import 'package:electo_store/domain/core/network/network_info.dart';
import 'package:electo_store/domain/reviews/i_reviews_repository.dart';
import 'package:electo_store/infastructure/reviews/reviews_model.dart';
import 'package:electo_store/domain/reviews/value_objects.dart';
import 'package:electo_store/domain/reviews/reviews_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const BASE_URL = 'https://electro-store-api.herokuapp.com/api/v1/products/';

@LazySingleton(as: IReviewRepository)
class ReviewRepository implements IReviewRepository {
  final http.Client client;
  final NetworkInfo networkInfo;
  final SharedPreferences sharedPreferences;

  ReviewRepository(
    this.client,
    this.networkInfo,
    this.sharedPreferences,
  );

  @override
  Stream<Either<ReviewFailure, ReviewsResultModel>> watchProductReviews({
    String productId,
  }) async* {
    final fullUrl = BASE_URL + '$productId/reviews';
    if (await networkInfo.isConnected) {
      final response = await client.get(
        fullUrl,
        headers: {
          "Content-type": "application/json",
          "Cookie": 'token=' + sharedPreferences.getString(TOKEN_KEY),
          "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
        },
      );

      if (response.statusCode == 200) {
        final productResults = ReviewsResultModel.fromJson(
          json.decode(response.body),
        );
        print('did you reach here baby?? ${response.body}');
        yield right(productResults);
      } else if (response.statusCode == 401) {
        yield left(ReviewFailure.notAuthorizedError());
      } else {
        yield left(ReviewFailure.serverError());
      }
    } else {
      yield left(ReviewFailure.badConnectionError());
    }
  }

  @override
  Future<Either<ReviewFailure, Unit>> addNewReview({
    ReviewText reviewText,
    int rating,
    String productId,
  }) async {
    final reviewTextStr = reviewText.getOrCrash();
    print(
        'did you reach here $reviewTextStr $rating ${sharedPreferences.getString(USER_ID_KEY)}');

    final fullUrl = BASE_URL + '$productId/reviews';

    if (await networkInfo.isConnected) {
      final response = await client.post(fullUrl,
          headers: {
            "Content-type": "application/json",
            "Cookie": 'token=' + sharedPreferences.getString(TOKEN_KEY),
            "Authorization": "Bearer " + sharedPreferences.getString(TOKEN_KEY),
          },
          body: json.encode({
            'text': reviewTextStr,
            'rating': rating.toString(),
            'product': productId,
            'user': sharedPreferences.getString(USER_ID_KEY),
          }));

      if (response.statusCode == 200) {
        print('I hope you worked? ${response.body}');
        return right(unit);
      } else if (response.statusCode == 401) {
        return left(ReviewFailure.notAuthorizedError());
      } else if (response.statusCode == 400) {
        return left(ReviewFailure.dublicateReview());
      } else {
        return left(ReviewFailure.serverError());
      }
    } else {
      return left(ReviewFailure.badConnectionError());
    }
  }
}

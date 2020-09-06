import 'package:dartz/dartz.dart';
import 'package:electo_store/domain/reviews/reviews_failure.dart';
import 'package:electo_store/domain/reviews/value_objects.dart';
import 'package:electo_store/infastructure/reviews/reviews_result_model.dart';
import 'package:flutter/material.dart';

abstract class IReviewRepository {
  Stream<Either<ReviewFailure, ReviewsResultModel>> watchProductReviews({
    @required String productId,
  });
  Future<Either<ReviewFailure, Unit>> addNewReview({
    @required ReviewText reviewText,
    @required int rating,
    @required String productId,
  });
}

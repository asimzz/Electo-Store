import 'package:electo_store/infastructure/reviews/reviews_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_result_model.freezed.dart';
part 'reviews_result_model.g.dart';

@freezed
abstract class ReviewsResultModel with _$ReviewsResultModel {
  const factory ReviewsResultModel({
    @required int count,
    @required List<ReviewsModel> data,
  }) = _ReviewsResultModel;

  factory ReviewsResultModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsResultModelFromJson(json);
}

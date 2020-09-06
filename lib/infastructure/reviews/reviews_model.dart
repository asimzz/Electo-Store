import 'package:electo_store/infastructure/auth/user/user_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
abstract class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
    @required @JsonKey(name: '_id') String id,
    @required String text,
    @required int rating,
    @required @JsonKey(name: 'product') String productId,
    @required UserData user,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}

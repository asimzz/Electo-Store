import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @required String avatar,
    @required String role,
    @JsonKey(name: '_id') @required String id,
    @required String name,
    @required String email,
    @required String birthDate,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

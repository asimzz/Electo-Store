import 'package:electo_store/infastructure/auth/user/user_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_result_model.freezed.dart';

part 'user_result_model.g.dart';

@freezed
abstract class UserResult implements _$UserResult {
  const UserResult._();
  const factory UserResult({
    @required UserData data,
  }) = _UserResult;

  factory UserResult.fromJson(Map<String, dynamic> json) =>
      _$UserResultFromJson(json);
}

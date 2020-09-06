import 'package:electo_store/infastructure/products/next_or_previous_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @nullable @JsonKey(name: 'next') @required NextOrPreviousPage nextPage,
    @nullable
    @JsonKey(name: 'current')
    @required
        NextOrPreviousPage currentPage,
    @nullable @JsonKey(name: 'prev') @required NextOrPreviousPage previousPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'next_or_previous_page.freezed.dart';
part 'next_or_previous_page.g.dart';

@freezed
abstract class NextOrPreviousPage with _$NextOrPreviousPage {
  const factory NextOrPreviousPage({
    @required int page,
    @required int limit,
  }) = _NextOrPreviousPage;
  factory NextOrPreviousPage.fromJson(Map<String, dynamic> json) =>
      _$NextOrPreviousPageFromJson(json);
}

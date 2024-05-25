import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({int? currentPage, int? totalPage, int? perPage}) =
      _Pagination;
}

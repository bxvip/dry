import 'package:json_annotation/json_annotation.dart';

part 'page_model.g.dart';

@JsonSerializable()
class PageModel {
  int? total;
  int? size;
  int? current;
  int? pages;
  List<Map<String, dynamic>>? records;

  PageModel({this.total, this.size, this.current, this.pages, this.records});

  PageModel copyWith({
    int? total,
    int? size,
    int? current,
    int? pages,
    List<Map<String, dynamic>>? records,
  }) {
    return PageModel(
      total: total ?? this.total,
      size: size ?? this.size,
      current: current ?? this.current,
      pages: pages ?? this.pages,
      records: records ?? this.records,
    );
  }

  factory PageModel.fromJson(Map<String, dynamic> json) =>
      _$PageModelFromJson(json);

  Map<String, dynamic> toJson() => _$PageModelToJson(this);
}

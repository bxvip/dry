// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageModel _$PageModelFromJson(Map<String, dynamic> json) {
  return PageModel(
    total: json['total'] as int?,
    size: json['size'] as int?,
    current: json['current'] as int?,
    pages: json['pages'] as int?,
    records: (json['records'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
  );
}

Map<String, dynamic> _$PageModelToJson(PageModel instance) => <String, dynamic>{
      'total': instance.total,
      'size': instance.size,
      'current': instance.current,
      'pages': instance.pages,
      'records': instance.records,
    };

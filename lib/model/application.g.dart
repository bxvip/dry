// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application(
    baseUrl: json['baseUrl'] as String,
    connectTimeout: json['connectTimeout'] as int,
    readTimeout: json['readTimeout'] as int,
  );
}

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'connectTimeout': instance.connectTimeout,
      'readTimeout': instance.readTimeout,
    };

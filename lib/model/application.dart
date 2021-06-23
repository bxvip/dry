import 'package:json_annotation/json_annotation.dart';

part 'application.g.dart';

@JsonSerializable()
class Application {
  String? baseUrl;
  int? connectTimeout;
  int? readTimeout;

  Application({this.baseUrl, this.connectTimeout, this.readTimeout});

  Application copyWith({
    String? baseUrl,
    int? connectTimeout,
    int? receiveTimeout,
  }) {
    return new Application(
      baseUrl: baseUrl ?? this.baseUrl,
      connectTimeout: connectTimeout ?? this.connectTimeout,
      readTimeout: receiveTimeout ?? this.readTimeout,
    );
  }

  factory Application.fromJson(Map<String, dynamic> json) =>
      _$ApplicationFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationToJson(this);
}

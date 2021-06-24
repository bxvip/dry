import 'dart:convert';

class ResponseBodyApi<T> {
  int msg;
  String? param;
  T? data;

  ResponseBodyApi({this.msg = -1, this.param, this.data});

  ResponseBodyApi<T> copyWith({
    int? msg,
    String? param,
    T? data,
  }) {
    return ResponseBodyApi<T>(
      msg: msg ?? this.msg,
      param: param ?? this.param,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'msg': msg,
      'param': param,
      'data': data,
    };
  }

  factory ResponseBodyApi.fromMap(Map<String, dynamic> map) {
    return ResponseBodyApi<T>(
      msg: map['msg'],
      param: map['param'],
      data: map['data'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponseBodyApi.fromJson(String source) =>
      ResponseBodyApi.fromMap(json.decode(source));
}

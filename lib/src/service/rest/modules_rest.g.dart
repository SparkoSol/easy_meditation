// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modules_rest.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _ModulesRestAPI implements ModulesRestAPI {
  _ModulesRestAPI(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<List<Module>> getModules(number) async {
    ArgumentError.checkNotNull(number, 'number');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('/courses/$number',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Module.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }
}

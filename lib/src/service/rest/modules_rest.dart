import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'modules_rest.g.dart';

@RestApi()
abstract class ModulesRestAPI {
  factory ModulesRestAPI() => _ModulesRestAPI(dioClient);

  @GET('/courses/{id}')
  Future<List<Module>> getModules(@Path('id') int number);
}
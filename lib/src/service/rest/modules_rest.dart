import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';

class ModulesRestAPI {
  Future<List<Module>> getModules(int number) async {
    return (jsonDecode(
      (await http.get(Uri.parse('$apiUrl/courses/$number'))).body,
    ) as List).map((e) => Module.fromJson(e)).toList();
  }
}

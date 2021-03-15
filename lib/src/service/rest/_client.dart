import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioClient = Dio(BaseOptions(
  baseUrl: kDebugMode ? 'http://192.168.1.8:4000' : 'https://mysterious-garden-78033.herokuapp.com'
))
..interceptors.add(PrettyDioLogger(requestBody: true));

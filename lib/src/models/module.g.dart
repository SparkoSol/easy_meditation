// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Module _$ModuleFromJson(Map<String, dynamic> json) {
  return Module()
    ..id = json['_id'] as String
    ..length = json['length'] as double
    ..name = json['name'] as String
    ..trackId = json['trackId'] as String
    ..courseNumber = json['courseNumber'] as int;
}

Map<String, dynamic> _$ModuleToJson(Module instance) => <String, dynamic>{
      '_id': instance.id,
      'length': instance.length,
      'name': instance.name,
      'trackId': instance.trackId,
      'courseNumber': instance.courseNumber,
    };
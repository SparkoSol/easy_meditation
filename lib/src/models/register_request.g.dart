// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    scope: (json['scope'] as List)?.map((e) => e as int)?.toList(),
  )
    ..id = json['_id'] as String
    ..name = json['name'] as String
    ..email = json['email'] as String
    ..username = json['username'] as String
    ..password = json['password'] as String
    ..isTrial = json['isTrial'] as bool
    ..recommended = (json['modules'] as List)
            ?.map((e) =>
                e == null ? null : Module.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [];
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'isTrial': instance.isTrial,
      'scope': instance.scope,
      'modules': instance.recommended,
    };

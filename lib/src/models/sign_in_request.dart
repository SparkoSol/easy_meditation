import 'package:json_annotation/json_annotation.dart';

part 'sign_in_request.g.dart';

@JsonSerializable(createFactory: false)
class SignInRequest {
  String username;
  String password;

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
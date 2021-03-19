import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String id;

  String name;
  String email;
  String username;
  String password;

  List<int> scope;

  User({this.scope = const [2]});

  Map<String, dynamic> toJson() {
    username = email;
    return _$UserToJson(this);
  }
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
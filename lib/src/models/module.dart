import 'package:json_annotation/json_annotation.dart';

part 'module.g.dart';


@JsonSerializable()
class Module {
  @JsonKey(name: '_id')
  String id;

  double length;
  String name;
  String trackId;
  String description;
  int courseNumber;

  int favorites = 0;
  int listened = 0;

  static const courses = ['Beginner', 'Intermediate', 'Advanced'];


  Module();

  factory Module.fromJson(Map<String, dynamic> json) => _$ModuleFromJson(json);
  toJson() => _$ModuleToJson(this);

  @override
  bool operator ==(Object other) {
    if (other is Module) {
      return other.id == id;
    }

    return false;
  }

  @override
  int get hashCode => super.hashCode;

}
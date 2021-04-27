import 'package:easy_meditation/src/models/module.dart';
import 'package:easy_meditation/src/service/rest/_client.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'register_request.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String id;

  String name;
  String email;
  String username;
  String password;
  bool isTrial = true;

  List<int> scope;

  @JsonKey(name: 'modules', defaultValue: [])
  List<Module> recommended = [];

  User({this.scope = const [2]});

  Map<String, dynamic> toJson() {
    username = email;
    return _$UserToJson(this);
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  void recommend(Module song) {
    if (recommended.isEmpty) {
      recommended.add(song);
    } else {
      unRecommend(recommended[0]);
      recommended.add(song);
    }

    http.post(
      Uri.parse('$apiUrl/users/add-recommended'),
      body: {'module': song.id},
    );
  }

  void unRecommend(Module song) {
    if (recommended.contains(song)) {
      recommended.remove(song);
      http.post(
        Uri.parse('$apiUrl/users/remove-recommended'),
        body: {'module': song.id},
      );
    }
  }
}

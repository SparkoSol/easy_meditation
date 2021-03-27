import 'package:json_annotation/json_annotation.dart';

part 'card.g.dart';

@JsonSerializable()
class Card {
  String fullName;
  String cardNumber;
  String expiryDate;
  String cvc;
  String type;

  Card();

  Map<String, dynamic> toJson() => _$CardToJson(this);
  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
}
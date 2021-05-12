// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card()
    ..fullName = json['fullName'] as String
    ..cardNumber = json['cardNumber'] as String
    ..expiryDate = json['expiryDate'] as String
    ..cvc = json['cvc'] as String
    ..type = json['type'] as String;
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'cardNumber': instance.cardNumber,
      'expiryDate': instance.expiryDate,
      'cvc': instance.cvc,
      'type': instance.type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction()
    ..user = json['user'] as String
    ..card = json['card'] as String
    ..amount = (json['amount'] as num)?.toDouble()
    ..createdAt = json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String)
    ..requiredAt = json['requiredAt'] == null
        ? null
        : DateTime.parse(json['requiredAt'] as String)
    ..nextAt = json['nextAt'] == null
        ? null
        : DateTime.parse(json['nextAt'] as String);
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'user': instance.user,
      'card': instance.card,
      'amount': instance.amount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'requiredAt': instance.requiredAt?.toIso8601String(),
      'nextAt': instance.nextAt?.toIso8601String(),
    };

import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable()
class Transaction {
  String user;
  String card;
  double amount;
  DateTime createdAt;
  DateTime requiredAt;
  DateTime nextAt;

  Transaction();

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  factory Transaction.fromJson(Map<String, dynamic> json) {
    print(json);
    if (json != null) return _$TransactionFromJson(json);
    return null;

  }
}

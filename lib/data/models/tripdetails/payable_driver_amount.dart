import 'dart:convert';

import 'package:equatable/equatable.dart';

class PayableDriverAmount extends Equatable {
  final String? id;
  final double? amount;

  const PayableDriverAmount({this.id, this.amount});

  factory PayableDriverAmount.fromMap(Map<String, dynamic> data) {
    return PayableDriverAmount(
      id: data['id'] as String?,
      amount: (data['Amount'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'Amount': amount,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PayableDriverAmount].
  factory PayableDriverAmount.fromJson(String data) {
    return PayableDriverAmount.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PayableDriverAmount] to a JSON string.
  String toJson() => json.encode(toMap());

  PayableDriverAmount copyWith({
    String? id,
    double? amount,
  }) {
    return PayableDriverAmount(
      id: id ?? this.id,
      amount: amount ?? this.amount,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, amount];
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final String? eCheckCode;
  final String? status;
  final int? amount2;
  final int? amountUsed2;
  final int? balance;
  final DateTime? dateUsed;
  final String? dateGenerated;

  const Data({
    this.eCheckCode,
    this.status,
    this.amount2,
    this.amountUsed2,
    this.balance,
    this.dateUsed,
    this.dateGenerated,
  });

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        eCheckCode: data['ECheckCode'] as String?,
        status: data['Status'] as String?,
        amount2: data['Amount2'] as int?,
        amountUsed2: data['AmountUsed2'] as int?,
        balance: data['Balance'] as int?,
        dateUsed: data['DateUsed'] == null
            ? null
            : DateTime.parse(data['DateUsed'] as String),
        dateGenerated: data['DateGenerated'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'ECheckCode': eCheckCode,
        'Status': status,
        'Amount2': amount2,
        'AmountUsed2': amountUsed2,
        'Balance': balance,
        'DateUsed': dateUsed?.toIso8601String(),
        'DateGenerated': dateGenerated,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(toMap());

  Data copyWith({
    String? eCheckCode,
    String? status,
    int? amount2,
    int? amountUsed2,
    int? balance,
    DateTime? dateUsed,
    String? dateGenerated,
  }) {
    return Data(
      eCheckCode: eCheckCode ?? this.eCheckCode,
      status: status ?? this.status,
      amount2: amount2 ?? this.amount2,
      amountUsed2: amountUsed2 ?? this.amountUsed2,
      balance: balance ?? this.balance,
      dateUsed: dateUsed ?? this.dateUsed,
      dateGenerated: dateGenerated ?? this.dateGenerated,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      eCheckCode,
      status,
      amount2,
      amountUsed2,
      balance,
      dateUsed,
      dateGenerated,
    ];
  }
}

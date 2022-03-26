import 'dart:convert';

import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final String? expressCheckNumber;
  final String? reason;

  const Datum({this.expressCheckNumber, this.reason});

  factory Datum.fromMap(Map<String, dynamic> data) => Datum(
        expressCheckNumber: data['ExpressCheckNumber'] as String?,
        reason: data['Reason'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'ExpressCheckNumber': expressCheckNumber,
        'Reason': reason,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Datum].
  factory Datum.fromJson(String data) {
    return Datum.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Datum] to a JSON string.
  String toJson() => json.encode(toMap());

  Datum copyWith({
    String? expressCheckNumber,
    String? reason,
  }) {
    return Datum(
      expressCheckNumber: expressCheckNumber ?? this.expressCheckNumber,
      reason: reason ?? this.reason,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [expressCheckNumber, reason];
}

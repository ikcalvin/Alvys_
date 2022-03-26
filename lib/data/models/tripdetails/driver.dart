import 'dart:convert';

import 'package:equatable/equatable.dart';

class Driver extends Equatable {
  final String? driverIn;
  final DateTime? out;

  const Driver({this.driverIn, this.out});

  factory Driver.fromMap(Map<String, dynamic> data) => Driver(
        driverIn: data['In'] as String?,
        out: data['Out'] == null ? null : DateTime.parse(data['Out'] as String),
      );

  Map<String, dynamic> toMap() => {
        'In': driverIn,
        'Out': out?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Driver].
  factory Driver.fromJson(String data) {
    return Driver.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Driver] to a JSON string.
  String toJson() => json.encode(toMap());

  Driver copyWith({
    String? driverIn,
    DateTime? out,
  }) {
    return Driver(
      driverIn: driverIn ?? this.driverIn,
      out: out ?? this.out,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [driverIn, out];
}

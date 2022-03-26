import 'dart:convert';

import 'package:equatable/equatable.dart';

class Truck extends Equatable {
  final dynamic truckIn;
  final dynamic out;

  const Truck({this.truckIn, this.out});

  factory Truck.fromMap(Map<String, dynamic> data) => Truck(
        truckIn: data['In'] as dynamic,
        out: data['Out'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'In': truckIn,
        'Out': out,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Truck].
  factory Truck.fromJson(String data) {
    return Truck.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Truck] to a JSON string.
  String toJson() => json.encode(toMap());

  Truck copyWith({
    dynamic truckIn,
    dynamic out,
  }) {
    return Truck(
      truckIn: truckIn ?? this.truckIn,
      out: out ?? this.out,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [truckIn, out];
}

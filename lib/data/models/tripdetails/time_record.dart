import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'driver.dart';
import 'truck.dart';

class TimeRecord extends Equatable {
  final Driver? driver;
  final Truck? truck;

  const TimeRecord({this.driver, this.truck});

  factory TimeRecord.fromMap(Map<String, dynamic> data) => TimeRecord(
        driver: data['Driver'] == null
            ? null
            : Driver.fromMap(data['Driver'] as Map<String, dynamic>),
        truck: data['Truck'] == null
            ? null
            : Truck.fromMap(data['Truck'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'Driver': driver?.toMap(),
        'Truck': truck?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TimeRecord].
  factory TimeRecord.fromJson(String data) {
    return TimeRecord.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TimeRecord] to a JSON string.
  String toJson() => json.encode(toMap());

  TimeRecord copyWith({
    Driver? driver,
    Truck? truck,
  }) {
    return TimeRecord(
      driver: driver ?? this.driver,
      truck: truck ?? this.truck,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [driver, truck];
}

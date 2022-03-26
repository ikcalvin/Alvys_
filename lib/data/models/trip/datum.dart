import 'dart:convert';

import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final String? id;
  final String? loadId;
  final String? firstStopAddress;
  final String? lastStopAddress;
  final String? equipment;
  final String? equipmentLength;
  final String? loadNumber;
  final String? tripNumber;
  final String? status;
  final double? rate;
  final double? tripValue;
  final double? totalMiles;
  final double? totalWeight;
  final double? temperature;
  final int? stopCount;
  final DateTime? pickupDate;
  final DateTime? deliveryDate;

  const Datum({
    this.id,
    this.loadId,
    this.firstStopAddress,
    this.lastStopAddress,
    this.equipment,
    this.equipmentLength,
    this.loadNumber,
    this.tripNumber,
    this.status,
    this.rate,
    this.tripValue,
    this.totalMiles,
    this.totalWeight,
    this.temperature,
    this.stopCount,
    this.pickupDate,
    this.deliveryDate,
  });

  factory Datum.fromMap(Map<String, dynamic> data) => Datum(
        id: data['Id'] as String?,
        loadId: data['LoadId'] as String?,
        firstStopAddress: data['FirstStopAddress'] as String?,
        lastStopAddress: data['LastStopAddress'] as String?,
        equipment: data['Equipment'] as String?,
        equipmentLength: data['EquipmentLength'] as String?,
        loadNumber: data['LoadNumber'] as String?,
        tripNumber: data['TripNumber'] as String?,
        status: data['Status'] as String?,
        rate: data['Rate'] as double?,
        tripValue: data['TripValue'] as double?,
        totalMiles: (data['TotalMiles'] as num?)?.toDouble(),
        totalWeight: data['TotalWeight'] as double?,
        temperature: data['Temperature'] as double?,
        stopCount: data['StopCount'] as int?,
        pickupDate: data['PickupDate'] == null
            ? null
            : DateTime.parse(data['PickupDate'] as String),
        deliveryDate: data['DeliveryDate'] == null
            ? null
            : DateTime.parse(data['DeliveryDate'] as String),
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'LoadId': loadId,
        'FirstStopAddress': firstStopAddress,
        'LastStopAddress': lastStopAddress,
        'Equipment': equipment,
        'EquipmentLength': equipmentLength,
        'LoadNumber': loadNumber,
        'TripNumber': tripNumber,
        'Status': status,
        'Rate': rate,
        'TripValue': tripValue,
        'TotalMiles': totalMiles,
        'TotalWeight': totalWeight,
        'Temperature': temperature,
        'StopCount': stopCount,
        'PickupDate': pickupDate?.toIso8601String(),
        'DeliveryDate': deliveryDate?.toIso8601String(),
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
    String? id,
    String? loadId,
    String? firstStopAddress,
    String? lastStopAddress,
    String? equipment,
    String? equipmentLength,
    String? loadNumber,
    String? tripNumber,
    String? status,
    double? rate,
    double? tripValue,
    double? totalMiles,
    double? totalWeight,
    double? temperature,
    int? stopCount,
    DateTime? pickupDate,
    DateTime? deliveryDate,
  }) {
    return Datum(
      id: id ?? this.id,
      loadId: loadId ?? this.loadId,
      firstStopAddress: firstStopAddress ?? this.firstStopAddress,
      lastStopAddress: lastStopAddress ?? this.lastStopAddress,
      equipment: equipment ?? this.equipment,
      equipmentLength: equipmentLength ?? this.equipmentLength,
      loadNumber: loadNumber ?? this.loadNumber,
      tripNumber: tripNumber ?? this.tripNumber,
      status: status ?? this.status,
      rate: rate ?? this.rate,
      tripValue: tripValue ?? this.tripValue,
      totalMiles: totalMiles ?? this.totalMiles,
      totalWeight: totalWeight ?? this.totalWeight,
      temperature: temperature ?? this.temperature,
      stopCount: stopCount ?? this.stopCount,
      pickupDate: pickupDate ?? this.pickupDate,
      deliveryDate: deliveryDate ?? this.deliveryDate,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      loadId,
      firstStopAddress,
      lastStopAddress,
      equipment,
      equipmentLength,
      loadNumber,
      tripNumber,
      status,
      rate,
      tripValue,
      totalMiles,
      totalWeight,
      temperature,
      stopCount,
      pickupDate,
      deliveryDate,
    ];
  }
}

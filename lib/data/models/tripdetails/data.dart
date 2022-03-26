import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'mini_stop.dart';
import 'payable_driver_amount.dart';

class Data extends Equatable {
  final String? id;
  final String? loadId;
  final String? equipment;
  final String? equipmentLength;
  final String? tripNumber;
  final String? status;
  final String? truckNum;
  final String? truckId;
  final String? trailerNum;
  final String? trailerId;
  final String? generalInstructions;
  final double? totalMiles;
  final double? paidMiles;
  final double? emptyMiles;
  final double? totalWeight;
  final double? temperature;
  final List<PayableDriverAmount>? payableDriverAmounts;
  final dynamic attachments;
  final List<MiniStop>? miniStops;
  final DateTime? pickupDate;
  final DateTime? deliveryDate;

  const Data({
    this.id,
    this.loadId,
    this.equipment,
    this.equipmentLength,
    this.tripNumber,
    this.status,
    this.truckNum,
    this.truckId,
    this.trailerNum,
    this.trailerId,
    this.generalInstructions,
    this.totalMiles,
    this.paidMiles,
    this.emptyMiles,
    this.totalWeight,
    this.temperature,
    this.payableDriverAmounts,
    this.attachments,
    this.miniStops,
    this.pickupDate,
    this.deliveryDate,
  });

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        id: data['Id'] as String?,
        loadId: data['LoadId'] as String?,
        equipment: data['Equipment'] as String?,
        equipmentLength: data['EquipmentLength'] as String?,
        tripNumber: data['TripNumber'] as String?,
        status: data['Status'] as String?,
        truckNum: data['TruckNum'] as String?,
        truckId: data['TruckId'] as String?,
        trailerNum: data['TrailerNum'] as String?,
        trailerId: data['TrailerId'] as String?,
        generalInstructions: data['GeneralInstructions'] as String?,
        totalMiles: (data['TotalMiles'] as num?)?.toDouble(),
        paidMiles: (data['PaidMiles'] as num?)?.toDouble(),
        emptyMiles: (data['EmptyMiles'] as num?)?.toDouble(),
        totalWeight: data['TotalWeight'] as double?,
        temperature: data['Temperature'] as double?,
        payableDriverAmounts: (data['PayableDriverAmounts'] as List<dynamic>?)
            ?.map((e) => PayableDriverAmount.fromMap(e as Map<String, dynamic>))
            .toList(),
        attachments: data['Attachments'] as dynamic,
        miniStops: (data['MiniStops'] as List<dynamic>?)
            ?.map((e) => MiniStop.fromMap(e as Map<String, dynamic>))
            .toList(),
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
        'Equipment': equipment,
        'EquipmentLength': equipmentLength,
        'TripNumber': tripNumber,
        'Status': status,
        'TruckNum': truckNum,
        'TruckId': truckId,
        'TrailerNum': trailerNum,
        'TrailerId': trailerId,
        'GeneralInstructions': generalInstructions,
        'TotalMiles': totalMiles,
        'PaidMiles': paidMiles,
        'EmptyMiles': emptyMiles,
        'TotalWeight': totalWeight,
        'Temperature': temperature,
        'PayableDriverAmounts':
            payableDriverAmounts?.map((e) => e.toMap()).toList(),
        'Attachments': attachments,
        'MiniStops': miniStops?.map((e) => e.toMap()).toList(),
        'PickupDate': pickupDate?.toIso8601String(),
        'DeliveryDate': deliveryDate?.toIso8601String(),
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
    String? id,
    String? loadId,
    String? equipment,
    String? equipmentLength,
    String? tripNumber,
    String? status,
    String? truckNum,
    String? truckId,
    String? trailerNum,
    String? trailerId,
    String? generalInstructions,
    double? totalMiles,
    double? paidMiles,
    double? emptyMiles,
    double? totalWeight,
    double? temperature,
    List<PayableDriverAmount>? payableDriverAmounts,
    dynamic attachments,
    List<MiniStop>? miniStops,
    DateTime? pickupDate,
    DateTime? deliveryDate,
  }) {
    return Data(
      id: id ?? this.id,
      loadId: loadId ?? this.loadId,
      equipment: equipment ?? this.equipment,
      equipmentLength: equipmentLength ?? this.equipmentLength,
      tripNumber: tripNumber ?? this.tripNumber,
      status: status ?? this.status,
      truckNum: truckNum ?? this.truckNum,
      truckId: truckId ?? this.truckId,
      trailerNum: trailerNum ?? this.trailerNum,
      trailerId: trailerId ?? this.trailerId,
      generalInstructions: generalInstructions ?? this.generalInstructions,
      totalMiles: totalMiles ?? this.totalMiles,
      paidMiles: paidMiles ?? this.paidMiles,
      emptyMiles: emptyMiles ?? this.emptyMiles,
      totalWeight: totalWeight ?? this.totalWeight,
      temperature: temperature ?? this.temperature,
      payableDriverAmounts: payableDriverAmounts ?? this.payableDriverAmounts,
      attachments: attachments ?? this.attachments,
      miniStops: miniStops ?? this.miniStops,
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
      equipment,
      equipmentLength,
      tripNumber,
      status,
      truckNum,
      truckId,
      trailerNum,
      trailerId,
      generalInstructions,
      totalMiles,
      paidMiles,
      emptyMiles,
      totalWeight,
      temperature,
      payableDriverAmounts,
      attachments,
      miniStops,
      pickupDate,
      deliveryDate,
    ];
  }
}

import 'dart:convert';

import 'package:equatable/equatable.dart';

class MComodity extends Equatable {
  final String? unitType;
  final double? numUnits;
  final String? description;
  final double? numPieces;
  final String? handlingType;
  final double? weight;
  final String? weightType;
  final dynamic hazmat;
  final dynamic temperature;
  final dynamic temperatureType;
  final dynamic serviceType;
  final bool? continuous;

  const MComodity({
    this.unitType,
    this.numUnits,
    this.description,
    this.numPieces,
    this.handlingType,
    this.weight,
    this.weightType,
    this.hazmat,
    this.temperature,
    this.temperatureType,
    this.serviceType,
    this.continuous,
  });

  factory MComodity.fromMap(Map<String, dynamic> data) => MComodity(
        unitType: data['UnitType'] as String?,
        numUnits: data['NumUnits'] as double?,
        description: data['Description'] as String?,
        numPieces: data['NumPieces'] as double?,
        handlingType: data['HandlingType'] as String?,
        weight: data['Weight'] as double?,
        weightType: data['WeightType'] as String?,
        hazmat: data['Hazmat'] as dynamic,
        temperature: data['Temperature'] as dynamic,
        temperatureType: data['TemperatureType'] as dynamic,
        serviceType: data['ServiceType'] as dynamic,
        continuous: data['Continuous'] as bool?,
      );

  Map<String, dynamic> toMap() => {
        'UnitType': unitType,
        'NumUnits': numUnits,
        'Description': description,
        'NumPieces': numPieces,
        'HandlingType': handlingType,
        'Weight': weight,
        'WeightType': weightType,
        'Hazmat': hazmat,
        'Temperature': temperature,
        'TemperatureType': temperatureType,
        'ServiceType': serviceType,
        'Continuous': continuous,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MComodity].
  factory MComodity.fromJson(String data) {
    return MComodity.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MComodity] to a JSON string.
  String toJson() => json.encode(toMap());

  MComodity copyWith({
    String? unitType,
    double? numUnits,
    String? description,
    double? numPieces,
    String? handlingType,
    double? weight,
    String? weightType,
    dynamic hazmat,
    dynamic temperature,
    dynamic temperatureType,
    dynamic serviceType,
    bool? continuous,
  }) {
    return MComodity(
      unitType: unitType ?? this.unitType,
      numUnits: numUnits ?? this.numUnits,
      description: description ?? this.description,
      numPieces: numPieces ?? this.numPieces,
      handlingType: handlingType ?? this.handlingType,
      weight: weight ?? this.weight,
      weightType: weightType ?? this.weightType,
      hazmat: hazmat ?? this.hazmat,
      temperature: temperature ?? this.temperature,
      temperatureType: temperatureType ?? this.temperatureType,
      serviceType: serviceType ?? this.serviceType,
      continuous: continuous ?? this.continuous,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      unitType,
      numUnits,
      description,
      numPieces,
      handlingType,
      weight,
      weightType,
      hazmat,
      temperature,
      temperatureType,
      serviceType,
      continuous,
    ];
  }
}

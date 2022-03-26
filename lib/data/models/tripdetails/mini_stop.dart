import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'm_comodity.dart';
import 'reference.dart';
import 'time_record.dart';

class MiniStop extends Equatable {
  final String? companyName;
  final String? street;
  final String? state;
  final String? zip;
  final String? city;
  final String? phone;
  final String? stopDate;
  final String? actualStopdate;
  final String? status;
  final String? appointment;
  final List<MComodity>? mComodities;
  final List<dynamic>? notes;
  final List<Reference>? references;
  final String? instructions;
  final String? genInstructions;
  final TimeRecord? timeRecord;
  final String? stopId;
  final String? stopType;
  final String? latitude;
  final String? longitude;
  final String? stopAddress;

  const MiniStop({
    this.companyName,
    this.street,
    this.state,
    this.zip,
    this.city,
    this.phone,
    this.stopDate,
    this.actualStopdate,
    this.status,
    this.appointment,
    this.mComodities,
    this.notes,
    this.references,
    this.instructions,
    this.genInstructions,
    this.timeRecord,
    this.stopId,
    this.stopType,
    this.latitude,
    this.longitude,
    this.stopAddress,
  });

  factory MiniStop.fromMap(Map<String, dynamic> data) => MiniStop(
        companyName: data['CompanyName'] as String?,
        street: data['Street'] as String?,
        state: data['State'] as String?,
        zip: data['Zip'] as String?,
        city: data['City'] as String?,
        phone: data['Phone'] as String?,
        stopDate: data['StopDate'] as String?,
        actualStopdate: data['ActualStopdate'] as String?,
        status: data['Status'] as String?,
        appointment: data['Appointment'] as String?,
        mComodities: (data['MComodities'] as List<dynamic>?)
            ?.map((e) => MComodity.fromMap(e as Map<String, dynamic>))
            .toList(),
        notes: data['Notes'] as List<dynamic>?,
        references: (data['References'] as List<dynamic>?)
            ?.map((e) => Reference.fromMap(e as Map<String, dynamic>))
            .toList(),
        instructions: data['Instructions'] as String?,
        genInstructions: data['GenInstructions'] as String?,
        timeRecord: data['TimeRecord'] == null
            ? null
            : TimeRecord.fromMap(data['TimeRecord'] as Map<String, dynamic>),
        stopId: data['StopId'] as String?,
        stopType: data['StopType'] as String?,
        latitude: data['Latitude'] as String?,
        longitude: data['Longitude'] as String?,
        stopAddress: data['StopAddress'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'CompanyName': companyName,
        'Street': street,
        'State': state,
        'Zip': zip,
        'City': city,
        'Phone': phone,
        'StopDate': stopDate,
        'ActualStopdate': actualStopdate,
        'Status': status,
        'Appointment': appointment,
        'MComodities': mComodities?.map((e) => e.toMap()).toList(),
        'Notes': notes,
        'References': references?.map((e) => e.toMap()).toList(),
        'Instructions': instructions,
        'GenInstructions': genInstructions,
        'TimeRecord': timeRecord?.toMap(),
        'StopId': stopId,
        'StopType': stopType,
        'Latitude': latitude,
        'Longitude': longitude,
        'StopAddress': stopAddress,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MiniStop].
  factory MiniStop.fromJson(String data) {
    return MiniStop.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MiniStop] to a JSON string.
  String toJson() => json.encode(toMap());

  MiniStop copyWith({
    String? companyName,
    String? street,
    String? state,
    String? zip,
    String? city,
    String? phone,
    String? stopDate,
    String? actualStopdate,
    String? status,
    String? appointment,
    List<MComodity>? mComodities,
    List<dynamic>? notes,
    List<Reference>? references,
    String? instructions,
    String? genInstructions,
    TimeRecord? timeRecord,
    String? stopId,
    String? stopType,
    String? latitude,
    String? longitude,
    String? stopAddress,
  }) {
    return MiniStop(
      companyName: companyName ?? this.companyName,
      street: street ?? this.street,
      state: state ?? this.state,
      zip: zip ?? this.zip,
      city: city ?? this.city,
      phone: phone ?? this.phone,
      stopDate: stopDate ?? this.stopDate,
      actualStopdate: actualStopdate ?? this.actualStopdate,
      status: status ?? this.status,
      appointment: appointment ?? this.appointment,
      mComodities: mComodities ?? this.mComodities,
      notes: notes ?? this.notes,
      references: references ?? this.references,
      instructions: instructions ?? this.instructions,
      genInstructions: genInstructions ?? this.genInstructions,
      timeRecord: timeRecord ?? this.timeRecord,
      stopId: stopId ?? this.stopId,
      stopType: stopType ?? this.stopType,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      stopAddress: stopAddress ?? this.stopAddress,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      companyName,
      street,
      state,
      zip,
      city,
      phone,
      stopDate,
      actualStopdate,
      status,
      appointment,
      mComodities,
      notes,
      references,
      instructions,
      genInstructions,
      timeRecord,
      stopId,
      stopType,
      latitude,
      longitude,
      stopAddress,
    ];
  }
}

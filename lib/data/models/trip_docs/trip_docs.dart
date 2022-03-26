import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'datum.dart';

class TripDocs extends Equatable {
  final List<Datum>? data;
  final int? errorCode;
  final int? statusCode;
  final String? responseId;

  const TripDocs({
    this.data,
    this.errorCode,
    this.statusCode,
    this.responseId,
  });

  factory TripDocs.fromMap(Map<String, dynamic> data) => TripDocs(
        data: (data['Data'] as List<dynamic>?)
            ?.map((e) => Datum.fromMap(e as Map<String, dynamic>))
            .toList(),
        errorCode: data['ErrorCode'] as int?,
        statusCode: data['StatusCode'] as int?,
        responseId: data['ResponseId'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Data': data?.map((e) => e.toMap()).toList(),
        'ErrorCode': errorCode,
        'StatusCode': statusCode,
        'ResponseId': responseId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TripDocs].
  factory TripDocs.fromJson(String data) {
    return TripDocs.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [TripDocs] to a JSON string.
  String toJson() => json.encode(toMap());

  TripDocs copyWith({
    List<Datum>? data,
    int? errorCode,
    int? statusCode,
    String? responseId,
  }) {
    return TripDocs(
      data: data ?? this.data,
      errorCode: errorCode ?? this.errorCode,
      statusCode: statusCode ?? this.statusCode,
      responseId: responseId ?? this.responseId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data, errorCode, statusCode, responseId];
}

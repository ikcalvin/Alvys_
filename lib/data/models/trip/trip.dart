import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'datum.dart';

class Trip extends Equatable {
  final List<Datum>? data;
  final dynamic errorMessage;
  final int? errorCode;
  final dynamic statusCode;
  final String? responseId;

  const Trip({
    this.data,
    this.errorMessage,
    this.errorCode,
    this.statusCode,
    this.responseId,
  });

  factory Trip.fromMap(Map<String, dynamic> data) => Trip(
        data: (data['Data'] as List<dynamic>?)
            ?.map((e) => Datum.fromMap(e as Map<String, dynamic>))
            .toList(),
        errorMessage: data['ErrorMessage'] as dynamic,
        errorCode: data['ErrorCode'] as int?,
        statusCode: data['StatusCode'] as dynamic,
        responseId: data['ResponseId'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Data': data?.map((e) => e.toMap()).toList(),
        'ErrorMessage': errorMessage,
        'ErrorCode': errorCode,
        'StatusCode': statusCode,
        'ResponseId': responseId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Trip].
  factory Trip.fromJson(String data) {
    return Trip.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Trip] to a JSON string.
  String toJson() => json.encode(toMap());

  Trip copyWith({
    List<Datum>? data,
    dynamic errorMessage,
    int? errorCode,
    dynamic statusCode,
    String? responseId,
  }) {
    return Trip(
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
      errorCode: errorCode ?? this.errorCode,
      statusCode: statusCode ?? this.statusCode,
      responseId: responseId ?? this.responseId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      data,
      errorMessage,
      errorCode,
      statusCode,
      responseId,
    ];
  }
}

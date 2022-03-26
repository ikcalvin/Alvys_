import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class Tripdetails extends Equatable {
  final Data? data;
  final dynamic errorMessage;
  final int? errorCode;
  final dynamic statusCode;
  final String? responseId;

  const Tripdetails({
    this.data,
    this.errorMessage,
    this.errorCode,
    this.statusCode,
    this.responseId,
  });

  factory Tripdetails.fromMap(Map<String, dynamic> data) => Tripdetails(
        data: data['Data'] == null
            ? null
            : Data.fromMap(data['Data'] as Map<String, dynamic>),
        errorMessage: data['ErrorMessage'] as dynamic,
        errorCode: data['ErrorCode'] as int?,
        statusCode: data['StatusCode'] as dynamic,
        responseId: data['ResponseId'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Data': data?.toMap(),
        'ErrorMessage': errorMessage,
        'ErrorCode': errorCode,
        'StatusCode': statusCode,
        'ResponseId': responseId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Tripdetails].
  factory Tripdetails.fromJson(String data) {
    return Tripdetails.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Tripdetails] to a JSON string.
  String toJson() => json.encode(toMap());

  Tripdetails copyWith({
    Data? data,
    dynamic errorMessage,
    int? errorCode,
    dynamic statusCode,
    String? responseId,
  }) {
    return Tripdetails(
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

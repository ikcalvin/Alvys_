import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'data.dart';

class EcheckEnquiry extends Equatable {
  final Data? data;
  final int? errorCode;
  final String? responseId;

  const EcheckEnquiry({this.data, this.errorCode, this.responseId});

  factory EcheckEnquiry.fromMap(Map<String, dynamic> data) => EcheckEnquiry(
        data: data['Data'] == null
            ? null
            : Data.fromMap(data['Data'] as Map<String, dynamic>),
        errorCode: data['ErrorCode'] as int?,
        responseId: data['ResponseId'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Data': data?.toMap(),
        'ErrorCode': errorCode,
        'ResponseId': responseId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EcheckEnquiry].
  factory EcheckEnquiry.fromJson(String data) {
    return EcheckEnquiry.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EcheckEnquiry] to a JSON string.
  String toJson() => json.encode(toMap());

  EcheckEnquiry copyWith({
    Data? data,
    int? errorCode,
    String? responseId,
  }) {
    return EcheckEnquiry(
      data: data ?? this.data,
      errorCode: errorCode ?? this.errorCode,
      responseId: responseId ?? this.responseId,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data, errorCode, responseId];
}

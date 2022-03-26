import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'datum.dart';

class EcheckList extends Equatable {
  final List<Datum>? data;
  final int? errorCode;
  final String? responseId;

  const EcheckList({this.data, this.errorCode, this.responseId});

  factory EcheckList.fromMap(Map<String, dynamic> data) => EcheckList(
        data: (data['Data'] as List<dynamic>?)
            ?.map((e) => Datum.fromMap(e as Map<String, dynamic>))
            .toList(),
        errorCode: data['ErrorCode'] as int?,
        responseId: data['ResponseId'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Data': data?.map((e) => e.toMap()).toList(),
        'ErrorCode': errorCode,
        'ResponseId': responseId,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [EcheckList].
  factory EcheckList.fromJson(String data) {
    return EcheckList.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [EcheckList] to a JSON string.
  String toJson() => json.encode(toMap());

  EcheckList copyWith({
    List<Datum>? data,
    int? errorCode,
    String? responseId,
  }) {
    return EcheckList(
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

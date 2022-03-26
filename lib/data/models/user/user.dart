import 'package:equatable/equatable.dart';

import 'data.dart';

class User extends Equatable {
  final Data? data;
  final dynamic errorMessage;
  final int? errorCode;
  final dynamic statusCode;
  final String? responseId;

  const User({
    this.data,
    this.errorMessage,
    this.errorCode,
    this.statusCode,
    this.responseId,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        data: json['Data'] == null
            ? null
            : Data.fromJson(json['Data'] as Map<String, dynamic>),
        errorMessage: json['ErrorMessage'] as dynamic,
        errorCode: json['ErrorCode'] as int?,
        statusCode: json['StatusCode'] as dynamic,
        responseId: json['ResponseId'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'Data': data?.toJson(),
        'ErrorMessage': errorMessage,
        'ErrorCode': errorCode,
        'StatusCode': statusCode,
        'ResponseId': responseId,
      };

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

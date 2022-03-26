// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      errorCode: json['errorCode'],
      responseId: json['responseId'],
      data: json['data'],
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'data': instance.data,
      'errorCode': instance.errorCode,
      'responseId': instance.responseId,
    };

import 'dart:io';

import 'package:alvys/core/retrofit/api_client.dart';
import 'package:alvys/data/models/login.dart';
import 'package:alvys/domain/failure.dart';

abstract class RemoteDataSource {
  Future<Login> loginWithPhoneNumber(String phoneNumber);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  ApiClient apiClient;
  RemoteDataSourceImpl({required this.apiClient});
  @override
  Future<Login> loginWithPhoneNumber(String phoneNumber) async {
    try {
      return await apiClient.loginWithPhoneNumber(phoneNumber);
    } on SocketException {
      throw const Failure(message: "You are not connected to the Internet.");
    } on HttpException {
      throw const Failure(message: "Not found");
    } on FormatException {
      throw const Failure(message: "Bad response format");
    }
  }
}

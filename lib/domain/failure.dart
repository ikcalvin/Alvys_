import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

/*

class AccountNotFound extends Failure {
  const AccountNotFound({required String message}) : super(message: "");
}

class SocketException extends Failure {
  const SocketException({required String message}) : super(message: "");
}

class HttpException extends Failure {
  const HttpException({required String message}) : super(message: "");
}*/

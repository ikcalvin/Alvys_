import 'package:equatable/equatable.dart';

class LoginSuccess extends Equatable {
  final String data;
  final int errorCode;
  final String responseId;

  const LoginSuccess(this.errorCode, this.responseId, this.data);

  @override
  List<Object> get props => [errorCode, responseId, data];
}

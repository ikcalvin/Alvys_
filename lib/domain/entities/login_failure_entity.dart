import 'package:equatable/equatable.dart';

class LoginFailure extends Equatable {
  final String errorMessage;
  final int errorCode;
  final String responseId;

  const LoginFailure(this.errorCode, this.responseId, this.errorMessage);

  @override
  List<Object> get props => [errorCode, responseId, errorMessage];
}

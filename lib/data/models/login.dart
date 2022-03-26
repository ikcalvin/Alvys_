import 'package:alvys/domain/entities/login_success_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'login.g.dart';

@JsonSerializable()
class Login extends LoginSuccess {
  const Login({required errorCode, required responseId, required data})
      : super(errorCode, data, responseId);

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

import 'package:alvys/data/models/user/user.dart';
import 'package:alvys/domain/failure.dart';
import 'package:alvys/domain/entities/login_success_entity.dart';
import 'package:alvys/domain/repositories/auth_repo_impl.dart';
import 'package:dartz/dartz.dart';

class Authentication implements AuthenticationRepositoryImpl {
  @override
  Future<Either<Failure, LoginSuccess>> loginWithPhoneNumber(
      String phoneNumber) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> verifyPhoneNumber(String verificationCode) {
    throw UnimplementedError();
  }
}

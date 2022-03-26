import 'package:alvys/domain/entities/login_success_entity.dart';
import 'package:alvys/domain/failure.dart';
import 'package:dartz/dartz.dart';

import '../../data/models/user/user.dart';

abstract class AuthenticationRepositoryImpl {
  Future<Either<Failure, LoginSuccess>> loginWithPhoneNumber(
      String phoneNumber);
  Future<Either<Failure, User>> verifyPhoneNumber(String verificationCode);
}

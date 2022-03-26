import 'package:alvys/data/models/user/user.dart';
import 'package:alvys/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../core/usecase/usecase.dart';
import '../repositories/auth_repo_impl.dart';

class VerifyPhoneNumberUC implements UseCase<User, Params> {
  final AuthenticationRepositoryImpl authenticationRepository;

  VerifyPhoneNumberUC({required this.authenticationRepository});

  @override
  Future<Either<Failure, User>> call(Params params) async {
    return await authenticationRepository
        .verifyPhoneNumber(params.verificationCode);
  }
}

class Params extends Equatable {
  final String verificationCode;

  const Params({required this.verificationCode}) : super();

  @override
  List<Object> get props => [verificationCode];
}

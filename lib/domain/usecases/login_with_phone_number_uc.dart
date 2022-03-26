import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/domain/entities/login_success_entity.dart';
import 'package:alvys/domain/failure.dart';
import 'package:alvys/domain/repositories/auth_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LoginWithPhoneNumberUC implements UseCase<LoginSuccess, Params> {
  final AuthenticationRepositoryImpl authenticationRepository;

  LoginWithPhoneNumberUC(this.authenticationRepository);

  @override
  Future<Either<Failure, LoginSuccess>> call(Params parms) async {
    return await authenticationRepository
        .loginWithPhoneNumber(parms.phoneNumber);
  }
}

class Params extends Equatable {
  final String phoneNumber;

  const Params({required this.phoneNumber}) : super();

  @override
  List<Object> get props => [phoneNumber];
}

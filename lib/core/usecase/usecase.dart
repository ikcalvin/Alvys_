import 'package:alvys/domain/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params parms);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/data/models/echeck_enquiry/echeck_enquiry.dart';
import 'package:alvys/data/models/echeck_list/echeck_list.dart';
import 'package:dartz/dartz.dart';
import 'package:alvys/domain/failure.dart';
import 'package:equatable/equatable.dart';

class GetEcheckListUC implements UseCase<EcheckList, Params> {
  @override
  Future<Either<Failure, EcheckList>> call(parms) {
    EcheckList.fromMap(data).data.first.expressCheckNumber
    throw UnimplementedError();
  }
}

class Params extends Equatable {
  final String tripId;

  const Params({required this.tripId}) : super();

  @override
  List<Object> get props => [tripId];
}

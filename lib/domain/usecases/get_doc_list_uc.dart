import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/data/models/trip_docs/trip_docs.dart';
import 'package:alvys/domain/failure.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetDocListUC implements UseCase<TripDocs, Params> {
  final TripRepository tripRepository;
  GetDocListUC(this.tripRepository);

  @override
  Future<Either<Failure, TripDocs>> call(Params params) async {
    return await tripRepository.getTripDocs(params.tripId);
  }
}

class Params extends Equatable {
  final String tripId;

  const Params({required this.tripId}) : super();

  @override
  List<Object> get props => [tripId];
}

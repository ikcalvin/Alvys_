import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/data/models/tripdetails/tripdetails.dart';
import 'package:alvys/domain/failure.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetTripDetailsUC implements UseCase<Tripdetails, Params> {
  final TripRepository tripRepository;
  GetTripDetailsUC(this.tripRepository);

  @override
  Future<Either<Failure, Tripdetails>> call(Params parms) async {
    return await tripRepository.getTripDetails(parms.tripId);
  }
}

class Params extends Equatable {
  final String tripId;

  const Params({required this.tripId}) : super();

  @override
  List<Object> get props => [tripId];
}

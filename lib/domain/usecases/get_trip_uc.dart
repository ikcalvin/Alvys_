import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/data/models/trip/trip.dart';
import 'package:alvys/domain/failure.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:dartz/dartz.dart';

class GetAssignedTripUC implements UseCase<Trip, NoParams> {
  final TripRepository tripRepository;

  GetAssignedTripUC(this.tripRepository);

  @override
  Future<Either<Failure, Trip>> call(NoParams parms) async {
    return await tripRepository.getAssignedTrips();
  }
}

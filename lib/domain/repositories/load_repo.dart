import 'package:alvys/data/models/trip_docs/trip_docs.dart';
import 'package:alvys/data/models/tripdetails/tripdetails.dart';
import 'package:alvys/domain/failure.dart';
import 'package:dartz/dartz.dart';

import 'package:alvys/data/models/trip/trip.dart';

abstract class TripRepository {
  Future<Either<Failure, Trip>> getAssignedTrips();
  Future<Either<Failure, Tripdetails>> getTripDetails(String tripId);
  Future<Either<Failure, TripDocs>> getTripDocs(String tripId);
}

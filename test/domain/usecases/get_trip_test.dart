import 'dart:convert';

import 'package:alvys/core/usecase/usecase.dart';
import 'package:alvys/data/models/trip/trip.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:alvys/domain/usecases/get_trip_uc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixture/fixture_reader.dart';

class MockTripRepository extends Mock implements TripRepository {}

void main() {
  late MockTripRepository mockTripRepository;
  late GetAssignedTripUC getAssignedTripUC;

  setUp(() {
    mockTripRepository = MockTripRepository();
    getAssignedTripUC = GetAssignedTripUC(mockTripRepository);
  });

  test('Should get assigned trip successfully', () async {
    final tTripModel = Trip.fromMap(json.decode(fixture("trip.json")));

    //arrange
    when(() => mockTripRepository.getAssignedTrips())
        .thenAnswer((_) async => Right(tTripModel));
    //act
    final result = await getAssignedTripUC(NoParams());
    //assert
    expect(result, Right(tTripModel));
    verify(() => mockTripRepository.getAssignedTrips());
    verifyNoMoreInteractions(mockTripRepository);
  });
}

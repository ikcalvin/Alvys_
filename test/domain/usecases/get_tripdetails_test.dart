import 'dart:convert';

import 'package:alvys/data/models/tripdetails/tripdetails.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:alvys/domain/usecases/get_trip_details_uc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../fixture/fixture_reader.dart';

class MockTripRepository extends Mock implements TripRepository {}

void main() {
  late MockTripRepository mockTripRepository;
  late GetTripDetailsUC getTripDetailsUC;

  setUp(() {
    mockTripRepository = MockTripRepository();
    getTripDetailsUC = GetTripDetailsUC(mockTripRepository);
  });

  test('Should get assigned trip details successfully', () async {
    final tTripDetailsModel =
        Tripdetails.fromMap(json.decode(fixture("trip_details.json")));
    const tTripId = "78bc1febfdd64ee5bb2f89f4e663191e";

    //arrange
    when(() => mockTripRepository.getTripDetails(any()))
        .thenAnswer((_) async => Right(tTripDetailsModel));
    //act
    final result = await getTripDetailsUC(const Params(tripId: tTripId));
    //assert
    expect(result, Right(tTripDetailsModel));
    verify(() => mockTripRepository.getTripDetails(tTripId));
    verifyNoMoreInteractions(mockTripRepository);
  });
}

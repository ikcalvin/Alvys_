import 'dart:convert';

import 'package:alvys/data/models/trip_docs/trip_docs.dart';
import 'package:alvys/domain/repositories/load_repo.dart';
import 'package:alvys/domain/usecases/get_doc_list_uc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:dartz/dartz.dart';

import '../../fixture/fixture_reader.dart';

class MockTripRepository extends Mock implements TripRepository {}

void main() {
  late MockTripRepository mockTripRepository;
  late GetDocListUC getDocListUC;

  setUp(() {
    mockTripRepository = MockTripRepository();
    getDocListUC = GetDocListUC(mockTripRepository);
  });

  test('Should get trip documents successfully', () async {
    final tDocsModel = TripDocs.fromMap(json.decode(fixture("docs.json")));
    const tTripId = "78bc1febfdd64ee5bb2f89f4e663191e";

    //arrange
    when(() => mockTripRepository.getTripDocs(any()))
        .thenAnswer((_) async => Right(tDocsModel));

    //act
    final result = await getDocListUC(const Params(tripId: tTripId));

    //assert
    expect(result, Right(tDocsModel));
    verify(() => mockTripRepository.getTripDocs(tTripId));
    verifyNoMoreInteractions(mockTripRepository);
  });
}

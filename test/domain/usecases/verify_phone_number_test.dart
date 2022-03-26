import 'dart:convert';

import 'package:alvys/data/models/user/user.dart';
import 'package:alvys/domain/repositories/auth_repo_impl.dart';
import 'package:alvys/domain/usecases/verify_phone_number_uc.dart';
import 'package:dartz/dartz.dart';
//import 'package:mockito/annotations.dart';
//import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../fixture/fixture_reader.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepositoryImpl {}

void main() {
  late MockAuthenticationRepository mockAuthenticationRepository;
  late VerifyPhoneNumberUC usecase;
  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = VerifyPhoneNumberUC(
        authenticationRepository: mockAuthenticationRepository);
  });

  const tverificationCode = "OTA5NDYyMzMxMA==";

  final tUserModel = User.fromJson(json.decode(fixture("user.json")));

  test(
    'Should login successfully',
    () async {
      // arrange
      when(() => mockAuthenticationRepository.verifyPhoneNumber(any()))
          .thenAnswer((_) async => Right(tUserModel));
      // act
      final result =
          await usecase(const Params(verificationCode: tverificationCode));
      // assert
      expect(result, Right(tUserModel));
      verify(() =>
          mockAuthenticationRepository.verifyPhoneNumber(tverificationCode));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
}

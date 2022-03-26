import 'package:alvys/domain/entities/login_success_entity.dart';
import 'package:alvys/domain/repositories/auth_repo_impl.dart';
import 'package:alvys/domain/usecases/login_with_phone_number_uc.dart';
import 'package:dartz/dartz.dart';
//import 'package:mockito/annotations.dart';
//import 'package:mockito/mockito.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepositoryImpl {}

void main() {
  late MockAuthenticationRepository mockAuthenticationRepository;
  late LoginWithPhoneNumberUC usecase;
  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    usecase = LoginWithPhoneNumberUC(mockAuthenticationRepository);
  });

  const tPhoneNumber = "OTA5NDYyMzMxMA==";
  const tloginSuccessResponse =
      LoginSuccess(0, "s0DQevUG2gg", "Verification code sent successfully.");

  test(
    'Account should exist',
    () async {
      // arrange
      when(() => mockAuthenticationRepository.loginWithPhoneNumber(any()))
          .thenAnswer((_) async => const Right(tloginSuccessResponse));
      // act
      final result = await usecase(const Params(phoneNumber: tPhoneNumber));
      // assert
      expect(result, const Right(tloginSuccessResponse));
      verify(() =>
          mockAuthenticationRepository.loginWithPhoneNumber(tPhoneNumber));
      verifyNoMoreInteractions(mockAuthenticationRepository);
    },
  );
}

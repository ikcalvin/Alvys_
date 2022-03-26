import 'package:alvys/core/retrofit/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../data/models/login.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: "https://sandboxapi.alvys.com/api/mobilev2/")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Endpoint.login)
  Future<Login> loginWithPhoneNumber(
      @Path("base64PhoneNumber") String base64PhoneNumber);

  @GET(Endpoint.authenticate)
  Future<void> verifyPhoneNumber();
}

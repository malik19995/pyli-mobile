import 'package:chopper/chopper.dart';

import '../helpers/api/endpoints.dart';
import '../helpers/api_gen/generated/api_oas3.swagger.dart';
import '../helpers/interceptors/custom_interceptor.dart';

class UserRepo {
  final swagerClient = ApiOas3.create(
    baseUrl: Uri.parse(ApiEndpoints.baseUrl),
    interceptors: [
      HttpLoggingInterceptor(
        level: Level.body,
      ),
      AccessTokenInterceptor(),
    ],
  );

  Future<Response<CustomerDetails>> getUserDetails() async {
    return await swagerClient.apiV1CustomerMeGet();
  }
}

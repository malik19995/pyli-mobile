import 'api/_api.dart';
import 'api_gen/generated/api_oas3.swagger.dart';
import 'interceptors/custom_interceptor.dart';
import 'package:chopper/chopper.dart' as chopper;

class ApiClient {
  ApiOas3 getSwaggerClient() {
    return ApiOas3.create(
      baseUrl: Uri.parse(ApiEndpoints.baseUrl),
      interceptors: [
        chopper.HttpLoggingInterceptor(
          level: chopper.Level.body,
        ),
        AccesTokenInterceptor(),
      ],
    );
  }
}

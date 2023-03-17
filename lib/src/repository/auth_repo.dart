import 'package:chopper/chopper.dart';
import 'package:customerapp/src/helpers/api/_api.dart';
import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:customerapp/src/helpers/interceptors/custom_interceptor.dart';
import 'package:customerapp/src/helpers/logger.dart';
import 'package:http/http.dart' as http;

class AuthRepo {
  final swaggerClient = ApiOas3.create(
    client: ChopperClient(
      interceptors: [
        HttpLoggingInterceptor(
          level: Level.body,
        ),
        AccesTokenInterceptor(),
      ],
      converter: FormUrlEncodedConverter(),
      baseUrl: Uri.parse(
        ApiEndpoints.baseUrl,
      ),
    ),
  );

  // final swaggerClient = ApiOas3.create(
  //   baseUrl: Uri.parse(ApiEndpoints.baseUrl),
  //   interceptors: [
  //     HttpLoggingInterceptor(
  //       level: Level.body,
  //     ),
  //     AccesTokenInterceptor(),
  //   ],
  // );

  // Future<AResponse> resetPassword(String email) async {
  //   final data = {'email': email};
  //   final res = await Api.post(ApiEndpoints.forgetPassword, data: data);
  //   return res;
  // }

  Future<AResponse> register({
    required String accType,
    required String email,
    required String fName,
    required String lName,
    required String phone,
    required String password,
    String? siteNumber,
    String? permitNumber,
    int? agency,
    String? brand,
    String? manufacture,
    String? idNumber,
  }) async {
    final data = {
      "business_id": 0,
      "firstname": fName,
      "lastname": lName,
      "email": email,
      "password": password,
      "phone": phone,
      "type": accType,
      "address": "",
      "permitNumber": permitNumber,
      "manufacturer": manufacture,
      "level": "",
      "agency_id": agency ?? 0,
      "isOptedInForMarketing": true,
      "mailStreet": "",
      "mailCity": "",
      "mailState": "",
      "mailZip": ""
    };

    return await Api.post(ApiEndpoints.register, data: data);
  }

  Future<Response> signup({
    required int businessId,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String password,
    required String accType,
    String? siteNumber,
    String? permitNumber,
    int? agency,
    String? brand,
    String? manufacture,
    String? idNumber,
  }) async {
    return await swaggerClient.apiV1CustomerSignupPost(
      body: CustomerRegister(
          businessId: businessId,
          firstname: firstName,
          lastname: lastName,
          email: email,
          password: password,
          phone: phone,
          type: accType,
          agencyId: agency,
          idNumber: idNumber,
          brand: brand,
          permitNumber: permitNumber,
          manufacturer: manufacture),
    );
  }

  Future<Response<Token>> login({
    required String email,
    required String password,
  }) async {
    Log.e(email + password);
    return await swaggerClient.apiV1AuthLoginPost(
      body: BodyLoginApiV1AuthLoginPost(
        username: email,
        password: password,
      ),
    );
  }

  // Future<Response<Token>>
  Future<http.Response> loginManually({
    required String email,
    required String password,
  }) async {
    Log.e(email + password);
    // var url = Uri.https(
    //   ApiEndpoints.baseUrl,
    //   '/api/v1/auth/login',
    // );
    var formDataBody = {
      'grant_type': '',
      'username': email,
      'password': password,
      'scope': '',
      'client_id': '',
      'client_secret': '',
    };

    // Http post requst in Form Data.
    var response = await http.post(
        Uri.parse('${ApiEndpoints.baseUrl}/api/v1/auth/login'),
        headers: {
          'Accept': 'application/json',
          'content-type': 'application/x-www-form-urlencoded',
        },
        body: formDataBody
        // Uri.encodeQueryComponent(
        //   formDataBody.entries.map((e) => '${e.key}=${e.value}').join('&'),
        // ),
        );
    return response;
  }

  Future<Response<Token>> loginWithToken({
    required String token,
  }) async {
    return await swaggerClient.apiV1AuthTokenLoginGet(
      token: token,
    );
  }

  Future<Response> resetPassword({
    required String email,
  }) async {
    return await swaggerClient.apiV1AuthPasswordResetPost(
        body: PasswordReset(email: email));
  }

  Future<Response> logout() async {
    return await swaggerClient.apiV1AuthLogoutGet();
  }
}

import 'package:customerapp/src/helpers/api/endpoints.dart';
import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:customerapp/src/helpers/logger.dart';
import 'package:customerapp/src/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chopper/chopper.dart' as chopper;

import '../helpers/interceptors/custom_interceptor.dart';

class ProfileController extends GetxController {
  final UserRepo _repo = UserRepo();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxInt activeDrawerIndex = 0.obs;

  CustomerDetails? customerDetails;
  UserDetails? userDetails;

  // Swager generated apis object
  final swagerClient = ApiOas3.create(
    baseUrl: Uri.parse(ApiEndpoints.baseUrl),
    interceptors: [
      chopper.HttpLoggingInterceptor(
        level: chopper.Level.body,
      ),
      AccesTokenInterceptor(),
    ],
  );

  Future<chopper.Response<CustomerDetails>> getCurrentUserDetails() async {
    Log.e('api/v1/customer/me');
    final res = await swagerClient.apiV1CustomerMeGet();

    if (res.error != null) {
      Log.e(res.error);
    } else {
      Log.e('******* Current User Details fetched ******** \n ${res.body}');
      customerDetails = res.body;
      userDetails = UserDetails.fromJson(customerDetails?.owner);
    }

    return res;
  }
}

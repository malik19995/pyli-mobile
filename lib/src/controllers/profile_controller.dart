import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxInt activeDrawerIndex = 0.obs;
  final ApiOas3 api = ApiOas3.create();

  getProfile() {
    api.apiV1CustomerSignupPost(
        body: CustomerRegister(
            businessId: 1,
            firstname: 'firstname',
            lastname: 'lastname',
            email: 'email',
            password: 'password'));
  }
}

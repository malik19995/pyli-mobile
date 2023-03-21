import 'package:customerapp/src/controllers/auth_controller.dart';
import 'package:customerapp/src/helpers/api/endpoints.dart';
import 'package:customerapp/src/helpers/api_gen/generated/api_oas3.swagger.dart';
import 'package:customerapp/src/helpers/logger.dart';
import 'package:customerapp/src/helpers/snack.dart';
import 'package:customerapp/src/repository/user_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chopper/chopper.dart' as chopper;

import '../helpers/interceptors/custom_interceptor.dart';

class ProfileController extends GetxController {
  static final ProfileController get = Get.isRegistered<ProfileController>()
      ? Get.find()
      : Get.put(ProfileController());

  late final authController = AuthController.get;

  final UserRepo _repo = UserRepo();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  RxInt activeDrawerIndex = 0.obs;

  RxBool loading = RxBool(false);

  CustomerDetails? customerDetails;
  Rx<UserDetails?> userDetails = Rx(null);

  // Swager generated apis object
  final swagerClient = ApiOas3.create(
    baseUrl: Uri.parse(ApiEndpoints.baseUrl),
    interceptors: [
      chopper.HttpLoggingInterceptor(
        level: chopper.Level.body,
      ),
      AccessTokenInterceptor(),
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
      userDetails(UserDetails.fromJson(customerDetails?.owner));
    }

    return res;
  }

  Future<bool> updateUserDetails() async {
    Log.e('api/v1/customer/update/me');
    loading(true);
    final res = await swagerClient.apiV1CustomerUpdateMePut(
      body: CustomerEdit(
        firstname: authController.firstNameController.text.isEmpty
            ? null
            : authController.firstNameController.text,
        lastname: authController.lastNameController.text.isEmpty
            ? null
            : authController.lastNameController.text,
        phone: authController.phoneController.text.isEmpty
            ? null
            : authController.phoneController.text,
      ),
    );

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e('******* Update User details ******** \n ${res.body}');
      userDetails(UserDetails.fromJson(res.body!.owner));
      // userDetails = UserDetails.fromJson(customerDetails?.owner);
      loading(false);
      Snack.snack("Profile updated succesfully");
      return true;
    } else {
      Log.e(
          'Profile Update Unsuccessful, Status Code ---->> ${res.statusCode}\n  ${res.body}');
      Snack.showErrorSnack(message: 'Update error');
      loading(false);
      return false;
    }
  }
}

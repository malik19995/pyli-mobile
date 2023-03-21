import 'package:chopper/chopper.dart' as chopper;
import 'package:customerapp/src/controllers/_controllers.dart';
import 'package:customerapp/src/helpers/interceptors/custom_interceptor.dart';
import 'package:customerapp/src/helpers/local_storage.dart';
import 'package:customerapp/src/helpers/logger.dart';
import 'package:customerapp/src/helpers/snack.dart';
import 'package:customerapp/src/models/enums.dart';
import 'package:customerapp/src/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'dart:convert';

import '../helpers/api_gen/generated/api_oas3.swagger.dart';
import '../repository/auth_repo.dart';

class AuthController extends GetxController {
  static final AuthController get = Get.isRegistered<AuthController>()
      ? Get.find()
      : Get.put(AuthController());

  final AuthRepo _repo = AuthRepo();

  Rx<RegisterPageState> registerPageState = RegisterPageState.STEP1.obs;
  RxString accType = 'residental'.obs;
  RxBool isLoggedIn = false.obs;

  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  TextEditingController siteNumberController = TextEditingController();
  TextEditingController permitNumberController = TextEditingController();
  TextEditingController agencyController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController manufactureController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();

  var profileController = ProfileController.get;

  RxBool loading = RxBool(false);

  Token? userResponse;

  LocalStorage localStorage = LocalStorage();

  checkLoginStatus() {
    Log.e("********** Check Login Status Func ***********");
    final userData = localStorage.getToken();
    if (userData != null) {
      print('*********** Token Exists in Storage ************');
      String authToken = userData['token'].toString();
      bool isTokenExpired = JwtDecoder.isExpired(authToken);
      if (isTokenExpired) {
        print('*********** Token Expired ************');
        AccessTokenInterceptor.token = null;
        localStorage.removeToken();
        isLoggedIn.value = false;
      } else {
        print('*********** Token Not Expired ************');
        AccessTokenInterceptor.token = authToken;
        isLoggedIn.value = true;
      }
    } else {
      print('*********** Token does not Exists in Storage ************');
      isLoggedIn.value = false;
    }
  }

  Future<Map?> login() async {
    loading(true);

    final res = await _repo.loginManually(
      email: emailController.text,
      password: pass1Controller.text,
    );

    // Decode the response JSON
    var jsonResponse = jsonDecode(res.body);

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e(
          'Login Manual Request Successful, Status Code ---->> ${res.statusCode}');

      if (jsonResponse?['access_token'] != null) {
        localStorage.saveToken(jsonResponse['access_token']);
        AccessTokenInterceptor.token = jsonResponse['access_token'];
        Get.off(
          const HomePage(),
        );
      } else {
        Snack.showErrorSnack(message: 'Login Error');
      }
      // Log.e(jsonResponse['access_token']);
      loading(false);
      return jsonResponse;
    } else {
      Log.e(
          'Login Manual Request Unsuccessful, Status Code ---->> ${res.statusCode}\n  $jsonResponse');
      Snack.showErrorSnack(message: 'Login Error');
      loading(false);
      return null;
    }
    // return res;
  }

  Future<chopper.Response> resetPassword() async {
    loading(true);

    final res = await _repo.resetPassword(
      email: emailController.text,
    );
    loading(false);
    return res;
  }

  Future<bool> resetPasswordManually() async {
    final res = await _repo.resetPasswordManually(
      email: emailController.text,
    );

    // Decode the response JSON
    var jsonResponse = jsonDecode(res.body);

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e(
          'Password Reset Request Request Successful, Status Code ---->> ${res.statusCode}');
      loading(false);
      Snack.snack('Password reset request sent');
      return true;
    } else {
      Log.e(
          'Password Reset Request  Unsuccessful, Status Code ---->> ${res.statusCode}\n  $jsonResponse');
      Snack.showErrorSnack(message: 'Password Reset Error');
      loading(false);
      return false;
    }
  }

  Future<bool> changePassword() async {
    loading(true);
    final res = await _repo.changePassword(
        userId: profileController.userDetails.value!.id!,
        email: profileController.userDetails.value!.email!,
        oldPassword: pass1Controller.text,
        newPassword: pass2Controller.text);
    loading(false);

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e(
          'Password Reset Request Request Successful, Status Code ---->> ${res.statusCode}');
      localStorage.saveToken(res.body.access_token);
      AccessTokenInterceptor.token = res.body.access_token;
      loading(false);
      Snack.snack('Password changed successfully');
      return true;
    } else {
      Log.e(
          'Password Reset Request  Unsuccessful, Status Code ---->> ${res.statusCode}\n  ${res.body}');
      Snack.showErrorSnack(message: 'Password change error');
      loading(false);
      return false;
    }
  }

  Future<bool> changePasswordManually() async {
    loading(true);
    final res = await _repo.changePasswordManually(
        userId: profileController.userDetails.value!.id!,
        email: profileController.userDetails.value!.email!,
        oldPassword: pass1Controller.text,
        newPassword: pass2Controller.text);
    loading(false);

    var jsonResponse = jsonDecode(res.body);

    Log.e('Change password response ---->> $jsonResponse');

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e(
          'Password Reset Request Request Successful, Status Code ---->> ${res.statusCode}');
      localStorage.saveToken(jsonResponse['access_token']);
      AccessTokenInterceptor.token = jsonResponse['access_token'];
      loading(false);
      Snack.snack('Password changed successfully');
      return true;
    } else {
      Log.e(
          'Password Reset Request  Unsuccessful, Status Code ---->> ${res.statusCode}\n  $jsonResponse');
      Snack.showErrorSnack(message: 'Password change error');
      loading(false);
      return false;
    }
  }

  Future<bool> register() async {
    loading(true);

    final res = await _repo.signup(
        businessId: 1,
        accType: accType.value,
        email: emailController.text,
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        phone: phoneController.text,
        password: pass1Controller.text,
        agency: null,
        brand: brandController.text,
        manufacture: manufactureController.text,
        idNumber: idNumberController.text,
        permitNumber: permitNumberController.text,
        siteNumber: siteNumberController.text);

    loading(false);

    if (res.statusCode >= 200 && res.statusCode < 300) {
      Log.e(
          'Registration Request Successful, Status Code ---->> ${res.statusCode}');
      return true;
    } else {
      Log.e(
          'Registration Request Unsuccessful, Status Code ---->> ${res.statusCode}\n  Body -> ${res.body}\n  ERROR -> ${res.error} ');
      return false;
    }
  }

  Future<bool> logout() async {
    final res = await _repo.logout();
    if (res.statusCode >= 200 && res.statusCode < 300) {
      localStorage.removeToken();
      return true;
    } else {
      res.error.printError();
      return false;
    }
  }

  void reset() {
    loading(false);
    accType('residental');
    registerPageState.value = RegisterPageState.STEP1;
    emailController.clear();
    firstNameController.clear();
    lastNameController.clear();
    phoneController.clear();
    pass1Controller.clear();
    pass2Controller.clear();
    siteNumberController.clear();
    permitNumberController.clear();
    agencyController.clear();
    brandController.clear();
    manufactureController.clear();
    idNumberController.clear();
  }
}

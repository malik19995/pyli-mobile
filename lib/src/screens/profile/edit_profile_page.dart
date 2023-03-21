import 'package:customerapp/src/controllers/_controllers.dart';
import 'package:customerapp/src/resources/_resources.dart';
import 'package:customerapp/src/widgets/_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final authController = Get.find<AuthController>();
  final profileController = ProfileController.get;

  @override
  void initState() {
    authController.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Form(
          key: authController.formKey,
          child: ListView(
            children: [
              CTextField(
                controller: authController.firstNameController,
                header: 'First Name',
              ),
              SizedBox(height: 14),
              CTextField(
                controller: authController.lastNameController,
                header: 'Last Name',
              ),
              SizedBox(height: 14),
              CTextField(
                header: 'Email',
              ),
              SizedBox(height: 14),
              CTextField(
                controller: authController.phoneController,
                header: 'Phone Number',
              ),
              SizedBox(height: 32),
              CButton(
                label: 'Save',
                loading: profileController.loading.value,
                onPressed: () async {
                  var res = false;
                  if (authController.firstNameController.text.isNotEmpty ||
                      authController.lastNameController.text.isNotEmpty ||
                      authController.phoneController.text.isNotEmpty) {
                    res = await profileController.updateUserDetails();
                  }
                  if (res) {
                    Get.back();
                  }
                },
              ),
              SizedBox(height: 14),
              CButton(
                label: 'Cancel',
                color: Colors.white,
                labelColor: CColors.primary,
                border: BorderSide(color: CColors.primary, width: 2),
                onPressed: () => Get.back(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

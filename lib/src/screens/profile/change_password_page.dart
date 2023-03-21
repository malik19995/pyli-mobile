import 'package:customerapp/src/helpers/text_validators.dart';
import 'package:customerapp/src/resources/_resources.dart';
import 'package:customerapp/src/widgets/_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/_controllers.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _controller = Get.find<AuthController>();

  @override
  void initState() {
    _controller.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: Form(
        key: _controller.formKey,
        child: ListView(
          padding: EdgeInsets.all(14),
          children: [
            CTextField(
              controller: _controller.pass1Controller,
              header: 'Current Password',
              isPassword: true,
              validator: TextValidators.password,
            ),
            SizedBox(height: 14),
            CTextField(
              controller: _controller.pass2Controller,
              header: 'New Password',
              isPassword: true,
              validator: TextValidators.password,
            ),
            SizedBox(height: 14),
            CTextField(
              header: 'Re-Enter Password',
              isPassword: true,
              validator: (pass) {
                if (_controller.pass2Controller.text == pass) {
                  return null;
                } else {
                  return 'Passwords do not match';
                }
              },
            ),
            SizedBox(height: 32),
            CButton(
              label: 'Save',
              loading: _controller.loading.value,
              onPressed: () async {
                if (_controller.formKey.currentState!.validate() &&
                    !_controller.loading.value) {
                  final res = await _controller.changePasswordManually();
                  if (res) {
                    Get.back();
                  }
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
    );
  }
}

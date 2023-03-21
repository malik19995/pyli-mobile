import 'package:customerapp/src/helpers/snack.dart';
import 'package:customerapp/src/repository/_repository.dart';
import 'package:customerapp/src/resources/_resources.dart';
import 'package:customerapp/src/widgets/_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/_controllers.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  bool loading = false;
  bool success = false;

  final _controller = Get.find<AuthController>();

  @override
  void initState() {
    _controller.reset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: CBackButton(onTap: () {
                    Get.back();
                  })),
              SizedBox(height: 12),

              /// top text
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        success ? 'Email Sent!' : 'Forgot Password',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: CColors.primary_dark_max),
                      ),
                      Text(
                        success
                            ? 'Please check your email for further instructions'
                            : 'Please enter your email',
                        style: TextStyle(color: CColors.grey_light),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),

              ///text fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Column(
                  children: [
                    if (!success)
                      CTextField(
                        controller: _controller.emailController,
                        header: 'Email',
                      ),
                    SizedBox(height: 24),
                    CButton(
                      loading: loading,
                      onPressed: success
                          ? () {
                              Get.back();
                            }
                          : () async {
                              if (_controller.emailController.text.isEmail) {
                                setState(() {
                                  loading = true;
                                });
                                final res =
                                    await _controller.resetPasswordManually();
                                setState(() {
                                  loading = false;
                                });
                                if (res) {
                                  setState(() {
                                    success = true;
                                  });
                                }
                              }
                            },
                      label: success ? 'GO TO LOGIN' : 'RESET PASSWORD',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

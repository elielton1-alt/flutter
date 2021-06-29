import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_button.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_input_field.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_password_field.dart';
import 'package:flutter_application_1/app/modules/login/login_controller.dart';
import 'package:flutter_application_1/app/modules/login/widgets/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.03),
              SvgPicture.asset(
                "assets/login.svg",
                height: Get.height * 0.35,
              ),
              SizedBox(height: Get.height * 0.03),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Get.toNamed('/signup');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

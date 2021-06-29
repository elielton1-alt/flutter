import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_button.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_input_field.dart';
import 'package:flutter_application_1/app/global/widgets/rounded_password_field.dart';
import 'package:flutter_application_1/app/modules/signup/signup_controller.dart';
import 'package:flutter_application_1/app/modules/signup/widgets/background.dart';
import 'package:flutter_application_1/app/modules/signup/widgets/or_divider.dart';
import 'package:flutter_application_1/app/modules/signup/widgets/social_icon.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.03),
              SvgPicture.asset(
                "assets/signup.svg",
                height: Get.height * 0.35,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () {},
              ),
              SizedBox(height: Get.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Get.toNamed('/login');
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter_application_1/app/modules/initial/initial_binding.dart';
import 'package:flutter_application_1/app/modules/initial/initial_view.dart';
import 'package:flutter_application_1/app/modules/login/login_binding.dart';
import 'package:flutter_application_1/app/modules/login/login_view.dart';
import 'package:flutter_application_1/app/modules/signup/signup_binding.dart';
import 'package:flutter_application_1/app/modules/signup/signup_view.dart';
import 'package:flutter_application_1/app/modules/welcome/welcome_binding.dart';
import 'package:flutter_application_1/app/modules/welcome/welcome_view.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL, 
      page: () => InitialView(), 
      binding: InitialBinding()
      ),
       GetPage(
      name: Routes.LOGIN, 
      page: () => LoginView(), 
      binding: LoginBinding()
      ),
       GetPage(
      name: Routes.WELCOME, 
      page: () => WelcomeView(), 
      binding: WelcomeBinding()
      ),
       GetPage(
      name: Routes.SIGNUP, 
      page: () => SignupView(), 
      binding: SignupBinding()
      )
  ];
}

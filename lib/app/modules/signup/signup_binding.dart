import 'package:flutter_application_1/app/modules/signup/signup_controller.dart';
import 'package:get/get.dart';

class SignupBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SignupController>(() => SignupController());
  }
}
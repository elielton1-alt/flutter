import 'package:flutter_application_1/app/modules/welcome/welcome_controler.dart';
import 'package:get/get.dart';

class WelcomeBinding implements Bindings {
  
@override
void dependencies() {
  Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
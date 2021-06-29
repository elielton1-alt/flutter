import 'package:flutter_application_1/app/modules/initial/initial_controller.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<InitialController>(() => InitialController());
  }
}
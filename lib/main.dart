import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:flutter_application_1/app/theme/app_theme.dart';
import 'package:get/get.dart';

void main() {
  runApp( GetMaterialApp(
    title: "Baber App",
    debugShowCheckedModeBanner: false,
    theme: appThemeData ,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,

  ));
  

}




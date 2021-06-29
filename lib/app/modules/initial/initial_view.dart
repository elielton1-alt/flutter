import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/initial/initial_controller.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialView extends GetView<InitialController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children:<Widget>[
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            colors:[
              Color(0xffED213A),
              Color(0xff93291E)], 
            ),
            navigateAfterSeconds: Routes.WELCOME,
            loaderColor: Colors.transparent,
        ),
        Container(
          margin: EdgeInsets.all(100),
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo.png"),
            fit: BoxFit.contain
            )
        ),)
      ],
    )
    );
  }
}
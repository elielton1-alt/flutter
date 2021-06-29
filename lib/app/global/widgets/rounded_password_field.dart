import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/global/widgets/text_field_container.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showPassword = true;
    return TextFieldContainer(
      child: TextField(
        obscureText: showPassword,
        onChanged: onChanged,
        cursorColor: Get.theme.primaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Get.theme.primaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: Get.theme.primaryColor,
            ),
            onPressed: null
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

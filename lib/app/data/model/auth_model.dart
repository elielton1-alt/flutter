import 'package:flutter_application_1/app/data/model/user_model.dart';

class Auth {
  NewContact newContact;
  String token;

  Auth({this.newContact, this.token});

  Auth.fromJson(Map<String, dynamic> json) {
    newContact = json['newContact'] != null
        ?  NewContact.fromJson(json['newContact'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.newContact != null) {
      data['newContact'] = this.newContact.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}
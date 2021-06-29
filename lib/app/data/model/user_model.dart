class NewContact {
  String sId;
  String name;
  String email;
  String createdDate;
  int iV;

  NewContact({this.sId, this.name, this.email, this.createdDate, this.iV});

  NewContact.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    createdDate = json['created_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['created_date'] = this.createdDate;
    data['__v'] = this.iV;
    return data;
  }
}
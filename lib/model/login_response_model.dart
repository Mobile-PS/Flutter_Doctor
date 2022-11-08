
class LoginResponseModel {
  List<Show> show;

  LoginResponseModel({this.show});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<Show>();
      json['show'].forEach((v) {
        show.add(new Show.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.show != null) {
      data['show'] = this.show.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Show {
  String loginNumber;
  String patientSerialCode;

  Show({this.loginNumber, this.patientSerialCode});

  Show.fromJson(Map<String, dynamic> json) {
    loginNumber = json['loginNumber'];
    patientSerialCode = json['patientSerialCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['loginNumber'] = this.loginNumber;
    data['patientSerialCode'] = this.patientSerialCode;
    return data;
  }
}


class OrderResponseModel {
  List<Show> show;

  OrderResponseModel({this.show});

  OrderResponseModel.fromJson(Map<String, dynamic> json) {
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
  String patientName;
  String gender;
  String selectedTime;
  String patientAge;
  String paymentMethod;
  String emailId;
  String mobileNo;
  String selectedDate;
  String patientCode;
  String serviceName;
  String subserviceName;

  dynamic price;

  Show(
      {this.patientName,
        this.gender,
        this.selectedTime,
        this.patientAge,
        this.paymentMethod,
        this.emailId,
        this.mobileNo,
        this.selectedDate,
        this.patientCode,
        this.serviceName,
        this.price,
        this.subserviceName
      });

  Show.fromJson(Map<String, dynamic> json) {
    patientName = json['patientName'];
    gender = json['gender'];
    selectedTime = json['selectedTime'];
    patientAge = json['patientAge'];
    paymentMethod = json['paymentMethod'];
    emailId = json['emailId'];
    mobileNo = json['mobileNo'];
    selectedDate = json['selectedDate'];
    patientCode = json['patientCode'];
    serviceName = json['serviceName'];
    price = json['price'];
    subserviceName = json['subServiceName'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['patientName'] = this.patientName;
    data['gender'] = this.gender;
    data['selectedTime'] = this.selectedTime;
    data['patientAge'] = this.patientAge;
    data['paymentMethod'] = this.paymentMethod;
    data['emailId'] = this.emailId;
    data['mobileNo'] = this.mobileNo;
    data['selectedDate'] = this.selectedDate;
    data['patientCode'] = this.patientCode;
    data['serviceName'] = this.serviceName;
    data['price'] = this.price;
    data['subServiceName'] = this.subserviceName;

    return data;
  }
}

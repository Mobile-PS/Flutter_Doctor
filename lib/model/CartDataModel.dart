
class CartDataModel {
  List<CartShow> show;

  CartDataModel({this.show});

  CartDataModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<CartShow>();
      json['show'].forEach((v) {
        show.add(new CartShow.fromJson(v));
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

class CartShow {
  String hospitalId;
  String subServiceRate;
  String subServiceName;
  String hospitalName;
  String patientSerialCode;
  String serviceId;
  String serviceName;
  String subServiceId;
  String totalSumOfSubServiceFees;
  String countOfSubService;

  CartShow(
      {this.hospitalId,
        this.subServiceRate,
        this.subServiceName,
        this.hospitalName,
        this.patientSerialCode,
        this.serviceId,
        this.serviceName,
        this.subServiceId,
        this.totalSumOfSubServiceFees,
        this.countOfSubService});

  CartShow.fromJson(Map<String, dynamic> json) {
    hospitalId = json['hospitalId'];
    subServiceRate = json['subServiceRate'];
    subServiceName = json['subServiceName'];
    hospitalName = json['hospitalName'];
    patientSerialCode = json['patientSerialCode'];
    serviceId = json['serviceId'];
    serviceName = json['serviceName'];
    subServiceId = json['subServiceId'];
    totalSumOfSubServiceFees = json['TotalSumOfSubServiceFees'];
    countOfSubService = json['CountOfSubService'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hospitalId'] = this.hospitalId;
    data['subServiceRate'] = this.subServiceRate;
    data['subServiceName'] = this.subServiceName;
    data['hospitalName'] = this.hospitalName;
    data['patientSerialCode'] = this.patientSerialCode;
    data['serviceId'] = this.serviceId;
    data['serviceName'] = this.serviceName;
    data['subServiceId'] = this.subServiceId;
    data['TotalSumOfSubServiceFees'] = this.totalSumOfSubServiceFees;
    data['CountOfSubService'] = this.countOfSubService;
    return data;
  }
}

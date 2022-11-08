
class DoctorServiceDataModel {
  List<DocShow> show;

  DoctorServiceDataModel({this.show});

  DoctorServiceDataModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<DocShow>();
      json['show'].forEach((v) {
        show.add(new DocShow.fromJson(v));
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

class DocShow {
  String contactNo;
  int hospitalId;
  String hospitalAddress;
  String hospitalName;
  String profileImage;
  int fees;

  DocShow(
      {this.contactNo,
        this.hospitalId,
        this.hospitalAddress,
        this.hospitalName,
        this.profileImage,
        this.fees});

  DocShow.fromJson(Map<String, dynamic> json) {
    contactNo = json['contact No'];
    hospitalId = json['hospitalId'];
    hospitalAddress = json['hospitalAddress'];
    hospitalName = json['hospitalName'];
    profileImage = json['profileImage'];
    fees = json['fees'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact No'] = this.contactNo;
    data['hospitalId'] = this.hospitalId;
    data['hospitalAddress'] = this.hospitalAddress;
    data['hospitalName'] = this.hospitalName;
    data['profileImage'] = this.profileImage;
    data['fees'] = this.fees;

    return data;
  }
}

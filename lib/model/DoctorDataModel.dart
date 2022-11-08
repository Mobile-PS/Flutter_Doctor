class DoctorDataModel {
  List<DShow> show;

  DoctorDataModel({this.show});

  DoctorDataModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<DShow>();
      json['show'].forEach((v) {
        show.add(new DShow.fromJson(v));
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

class DShow {
  String contactNo;
  String fees;
  int hospitalId;
  String hospitalAddress;
  String hospitalName;
  String hospitalSpeciality;
  String profileImage;
  String image1;
  String image2;
  String image3;
  String image4;
  String image5;
  dynamic location;

  DShow(
      {this.contactNo,
        this.fees,
        this.hospitalId,
        this.hospitalAddress,
        this.hospitalName,
        this.hospitalSpeciality,
        this.profileImage,
        this.image1,
        this.image2,
        this.image3,
        this.image4,
        this.image5,
        this.location
      });

  DShow.fromJson(Map<String, dynamic> json) {
    contactNo = json['contact No'];
    fees = json['fees'];
    hospitalId = json['hospitalId'];
    hospitalAddress = json['hospitalAddress'];
    hospitalName = json['hospitalName'];
    hospitalSpeciality = json['hospitalSpeciality'];
    profileImage = json['profileImage'];
    image1 = json['image1'];
    image2 = json['image2'];
    image3 = json['image3'];
    image4 = json['image4'];
    image5 = json['image5'];
    location = json['location'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contact No'] = this.contactNo;
    data['fees'] = this.fees;
    data['hospitalId'] = this.hospitalId;
    data['hospitalAddress'] = this.hospitalAddress;
    data['hospitalName'] = this.hospitalName;
    data['hospitalSpeciality'] = this.hospitalSpeciality;
    data['profileImage'] = this.profileImage;
    data['image1'] = this.image1;
    data['image2'] = this.image2;
    data['image3'] = this.image3;
    data['image4'] = this.image4;
    data['image5'] = this.image5;
    data['location'] = this.location;
    return data;
  }
}

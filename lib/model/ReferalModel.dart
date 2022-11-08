
class ReferalModel {
  List<Rshow> rshow;

  ReferalModel({this.rshow});

  ReferalModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      rshow = <Rshow>[];
      json['show'].forEach((v) {
        rshow.add(new Rshow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rshow != null) {
      data['show'] = this.rshow.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rshow {
  String status;

  Rshow({this.status});

  Rshow.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    return data;
  }
}
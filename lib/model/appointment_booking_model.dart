

class AppointmentBookingModel {
  List<Show> show;

  AppointmentBookingModel({this.show});

  AppointmentBookingModel.fromJson(Map<String, dynamic> json) {
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
  String status;

  Show({this.status});

  Show.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    return data;
  }
}

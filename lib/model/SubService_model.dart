class SubService_model {
  List<SubShow> show;

  SubService_model({this.show});

  SubService_model.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<SubShow>();
      json['show'].forEach((v) {
        show.add(new SubShow.fromJson(v));
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

class SubShow {
  String subService;
  String image;
  int serviceId;
  int subServiceId;

  SubShow({this.subService, this.image, this.serviceId, this.subServiceId});

  SubShow.fromJson(Map<String, dynamic> json) {
    subService = json['subService'];
    image = json['image'];
    serviceId = json['serviceId'];
    subServiceId = json['subServiceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subService'] = this.subService;
    data['image'] = this.image;
    data['serviceId'] = this.serviceId;
    data['subServiceId'] = this.subServiceId;
    return data;
  }
}
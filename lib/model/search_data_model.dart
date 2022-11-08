
class SearchDataModel {
  List<Show> show;

  SearchDataModel({this.show});

  SearchDataModel.fromJson(Map<String, dynamic> json) {
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
  String subService;
  String image;
  int subServiceId;
  int subServiceId1;
  String name;
  String type;

  Show({this.subService, this.image, this.subServiceId});

  Show.fromJson(Map<String, dynamic> json) {
    subService = json['service'];
    image = json['image'];
    subServiceId = json['id'];
    subServiceId1 = json['subId'];
    type = json['type'];
    name = json['name'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service'] = this.subService;
    data['image'] = this.image;
    data['id'] = this.subServiceId;
    data['subId'] = this.subServiceId1;
    data['type'] = this.type;
    data['name'] = this.name;

    return data;
  }
}
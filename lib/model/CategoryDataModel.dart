
class CategoryDataModel {
  List<CatShow> show;

  CategoryDataModel({this.show});

  CategoryDataModel.fromJson(Map<String, dynamic> json) {
    if (json['show'] != null) {
      show = new List<CatShow>();
      json['show'].forEach((v) {
        show.add(new CatShow.fromJson(v));
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

class CatShow {
  String service;
  int id;
  String serviceImage;

  CatShow({this.service, this.id, this.serviceImage});

  CatShow.fromJson(Map<String, dynamic> json) {
    service = json['Service'];
    id = json['id'];
    serviceImage = json['ServiceImage'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Service'] = this.service;
    data['id'] = this.id;
    data['ServiceImage'] = this.serviceImage;
    return data;
  }
}

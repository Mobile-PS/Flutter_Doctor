
class OfferDataModel {
  List<Show> show;

  OfferDataModel({this.show});

  OfferDataModel.fromJson(Map<String, dynamic> json) {
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
  String image;
  String offerName;
  int percentage;
  int id;

  Show({this.image, this.offerName, this.percentage, this.id});

  Show.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    offerName = json['offerName'];
    percentage = json['percentage'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['offerName'] = this.offerName;
    data['percentage'] = this.percentage;
    data['id'] = this.id;
    return data;
  }
}


class NotificationDataModel {
  List<Show> show;

  NotificationDataModel({this.show});

  NotificationDataModel.fromJson(Map<String, dynamic> json) {
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
  String notification;
  String image;
  int id;

  Show({this.notification, this.image, this.id});

  Show.fromJson(Map<String, dynamic> json) {
    notification = json['notification'];
    image = json['image'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['notification'] = this.notification;
    data['image'] = this.image;
    data['id'] = this.id;
    return data;
  }
}

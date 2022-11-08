
class AgentWorkAddress {
  AgentData data;

  AgentWorkAddress({this.data});

  AgentWorkAddress.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new AgentData.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class AgentData {
  String mobile;
  WorkAddress1 workAddress;

  AgentData({this.mobile, this.workAddress});

  AgentData.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    workAddress = json['work_address'] != null
        ? new WorkAddress1.fromJson(json['work_address'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    if (this.workAddress != null) {
      data['work_address'] = this.workAddress.toJson();
    }
    return data;
  }
}

class WorkAddress1 {
  String addressLine1;
  String addressLine2;
  String city;
  String country;
  String zip;
  int state;

  WorkAddress1(
      {this.addressLine1,
        this.addressLine2,
        this.city,
        this.country,
        this.zip,
        this.state});

  WorkAddress1.fromJson(Map<String, dynamic> json) {
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    city = json['city'];
    country = json['country'];
    zip = json['zip'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address_line_1'] = this.addressLine1;
    data['address_line_2'] = this.addressLine2;
    data['city'] = this.city;
    data['country'] = this.country;
    data['zip'] = this.zip;
    data['state'] = this.state;
    return data;
  }
}
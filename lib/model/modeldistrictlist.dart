

class Districtlist {
  String? id;
  String? districtName;
  String? stateId;

  Districtlist({this.id, this.districtName, this.stateId});

  Districtlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    districtName = json['district_name'];
    stateId = json['state_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['district_name'] = this.districtName;
    data['state_id'] = this.stateId;
    return data;
  }
}

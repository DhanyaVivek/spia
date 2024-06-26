class ModelDistrict {
  List<DistrictDetails>? districtDetails;

  ModelDistrict({this.districtDetails});

  ModelDistrict.fromJson(Map<String, dynamic> json) {
    if (json['district_details'] != null) {
      districtDetails = <DistrictDetails>[];
      json['district_details'].forEach((v) {
        districtDetails!.add(new DistrictDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.districtDetails != null) {
      data['district_details'] =
          this.districtDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DistrictDetails {
  String? id;
  String? districtName;
  String? stateId;

  DistrictDetails({this.id, this.districtName, this.stateId});

  DistrictDetails.fromJson(Map<String, dynamic> json) {
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

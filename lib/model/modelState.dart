class ModelState {
  List<StateDetails>? stateDetails;

  ModelState({this.stateDetails});

  ModelState.fromJson(Map<String, dynamic> json) {
    if (json['state_details'] != null) {
      stateDetails = <StateDetails>[];
      json['state_details'].forEach((v) {
        stateDetails!.add(new StateDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stateDetails != null) {
      data['state_details'] =
          this.stateDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StateDetails {
  String? id;
  String? stateName;

  StateDetails({this.id, this.stateName});

  StateDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stateName = json['state_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['state_name'] = this.stateName;
    return data;
  }
}

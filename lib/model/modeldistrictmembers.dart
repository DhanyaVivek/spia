class ModelDistmembers {
  List<Distmemberslist>? distmemberslist;

  ModelDistmembers({this.distmemberslist});

  ModelDistmembers.fromJson(Map<String, dynamic> json) {
    if (json['distmemberslist'] != null) {
      distmemberslist = <Distmemberslist>[];
      json['distmemberslist'].forEach((v) {
        distmemberslist!.add(new Distmemberslist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.distmemberslist != null) {
      data['distmemberslist'] =
          this.distmemberslist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Distmemberslist {
  String? status;
  String? meberid;
  String? name;
  String? email;
  String? contact;
  String? district;
  String? type;
  String? organization;

  Distmemberslist(
      {this.status,
        this.meberid,
        this.name,
        this.email,
        this.contact,
        this.district,
        this.type,
        this.organization});

  Distmemberslist.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    meberid = json['meberid'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    district = json['district'];
    type = json['type'];
    organization = json['organization'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['meberid'] = this.meberid;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['district'] = this.district;
    data['type'] = this.type;
    data['organization'] = this.organization;
    return data;
  }
}

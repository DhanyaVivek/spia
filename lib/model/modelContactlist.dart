class ModelContactlist {
  List<Memberslist>? memberslist;

  ModelContactlist({this.memberslist});

  ModelContactlist.fromJson(Map<String, dynamic> json) {
    if (json['memberslist'] != null) {
      memberslist = <Memberslist>[];
      json['memberslist'].forEach((v) {
        memberslist!.add(new Memberslist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.memberslist != null) {
      data['memberslist'] = this.memberslist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Memberslist {
  String? status;
  String? meberid;
  String? name;
  String? email;
  String? contact;
  String? type;
  String? organization;

  Memberslist(
      {this.status,
        this.meberid,
        this.name,
        this.email,
        this.contact,
        this.type,
        this.organization});

  Memberslist.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    meberid = json['meberid'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
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
    data['type'] = this.type;
    data['organization'] = this.organization;
    return data;
  }
}

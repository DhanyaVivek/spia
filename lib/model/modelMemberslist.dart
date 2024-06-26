class Memberslist {
  String? memberid;
  String? name;
  String? email;
  String? contact;
  String? type;
  String? paystatus;

  Memberslist(
      {this.memberid,
        this.name,
        this.email,
        this.contact,
        this.type,
        this.paystatus});

  Memberslist.fromJson(Map<String, dynamic> json) {
    memberid = json['memberid'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    type = json['type'];
    paystatus = json['paystatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['memberid'] = this.memberid;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['type'] = this.type;
    data['paystatus'] = this.paystatus;
    return data;
  }
}

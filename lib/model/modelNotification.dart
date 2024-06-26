class Notificationlist {
  String? messageid;
  String? messagetitle;
  String? description;
  String? url;

  Notificationlist(
      {this.messageid, this.messagetitle, this.description, this.url});

  Notificationlist.fromJson(Map<String, dynamic> json) {
    messageid = json['messageid'];
    messagetitle = json['messagetitle'];
    description = json['description'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messageid'] = this.messageid;
    data['messagetitle'] = this.messagetitle;
    data['description'] = this.description;
    data['url'] = this.url;
    return data;
  }
}

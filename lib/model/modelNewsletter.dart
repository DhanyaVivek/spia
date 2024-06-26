class ModelNewsLetter {
  List<Newsletter>? newsletter;

  ModelNewsLetter({this.newsletter});

  ModelNewsLetter.fromJson(Map<String, dynamic> json) {
    if (json['newsletter'] != null) {
      newsletter = <Newsletter>[];
      json['newsletter'].forEach((v) {
        newsletter!.add(new Newsletter.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.newsletter != null) {
      data['newsletter'] = this.newsletter!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Newsletter {
  String? id;
  String? title;
  String? url;

  Newsletter({this.id, this.title, this.url});

  Newsletter.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    title = json['Title'];
    url = json['Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Title'] = this.title;
    data['Url'] = this.url;
    return data;
  }
}

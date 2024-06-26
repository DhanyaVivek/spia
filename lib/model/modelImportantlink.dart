class ModelImportantlink {
  List<Importantlink>? importantlink;

  ModelImportantlink({this.importantlink});

  ModelImportantlink.fromJson(Map<String, dynamic> json) {
    if (json['importantlink'] != null) {
      importantlink = <Importantlink>[];
      json['importantlink'].forEach((v) {
        importantlink!.add(new Importantlink.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.importantlink != null) {
      data['importantlink'] =
          this.importantlink!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Importantlink {
  String? id;
  String? link;

  Importantlink({this.id, this.link});

  Importantlink.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['link'] = this.link;
    return data;
  }
}

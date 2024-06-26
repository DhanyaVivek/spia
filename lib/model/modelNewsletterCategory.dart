class ModelNewsLetterCategory {
  List<Newslettercategory>? newslettercategory;

  ModelNewsLetterCategory({this.newslettercategory});

  ModelNewsLetterCategory.fromJson(Map<String, dynamic> json) {
    if (json['newslettercategory'] != null) {
      newslettercategory = <Newslettercategory>[];
      json['newslettercategory'].forEach((v) {
        newslettercategory!.add(new Newslettercategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.newslettercategory != null) {
      data['newslettercategory'] =
          this.newslettercategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Newslettercategory {
  String? id;
  String? category;

  Newslettercategory({this.id, this.category});

  Newslettercategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    return data;
  }
}

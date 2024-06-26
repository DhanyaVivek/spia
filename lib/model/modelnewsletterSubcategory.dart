class ModelNewsLetterSubCategory {
  List<Newslettersubcategory>? newslettersubcategory;

  ModelNewsLetterSubCategory({this.newslettersubcategory});

  ModelNewsLetterSubCategory.fromJson(Map<String, dynamic> json) {
    if (json['newslettersubcategory'] != null) {
      newslettersubcategory = <Newslettersubcategory>[];
      json['newslettersubcategory'].forEach((v) {
        newslettersubcategory!.add(new Newslettersubcategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.newslettersubcategory != null) {
      data['newslettersubcategory'] =
          this.newslettersubcategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Newslettersubcategory {
  String? id;
  String? subcategory;

  Newslettersubcategory({this.id, this.subcategory});

  Newslettersubcategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subcategory = json['subcategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subcategory'] = this.subcategory;
    return data;
  }
}

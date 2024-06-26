class Linksubcategory {
  String? id;
  String? subcategory;

  Linksubcategory({this.id, this.subcategory});

  Linksubcategory.fromJson(Map<String, dynamic> json) {
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

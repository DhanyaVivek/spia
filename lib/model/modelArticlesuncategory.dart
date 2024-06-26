class Articlesubcategory {
  String? subCategoryId;
  String? subCategory;

  Articlesubcategory({this.subCategoryId, this.subCategory});

  Articlesubcategory.fromJson(Map<String, dynamic> json) {
    subCategoryId = json['SubCategoryId'];
    subCategory = json['SubCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SubCategoryId'] = this.subCategoryId;
    data['SubCategory'] = this.subCategory;
    return data;
  }
}

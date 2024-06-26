class Articlecategory {
  String? categoryid;
  String? category;

  Articlecategory({this.categoryid, this.category});

  Articlecategory.fromJson(Map<String, dynamic> json) {
    categoryid = json['Categoryid'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Categoryid'] = this.categoryid;
    data['Category'] = this.category;
    return data;
  }
}

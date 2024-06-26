class ModelArticles {
  List<Articles>? articles;

  ModelArticles({this.articles});

  ModelArticles.fromJson(Map<String, dynamic> json) {
    if (json['Articles'] != null) {
      articles = <Articles>[];
      json['Articles'].forEach((v) {
        articles!.add(new Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.articles != null) {
      data['Articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  String? articlename;
  String? description;
  String? imageUrl;

  Articles({this.articlename, this.description, this.imageUrl});

  Articles.fromJson(Map<String, dynamic> json) {
    articlename = json['Articlename'];
    description = json['Description'];
    imageUrl = json['ImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Articlename'] = this.articlename;
    data['Description'] = this.description;
    data['ImageUrl'] = this.imageUrl;
    return data;
  }
}

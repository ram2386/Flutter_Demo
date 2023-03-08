class TrendingNews {
  TrendingNews({
    required this.id,
    required this.title,
    required this.bannerUrl,
    required this.description,
  });

  int id;
  String title;
  String bannerUrl;
  String description;

  factory TrendingNews.fromJson(Map<String, dynamic> json) => TrendingNews(
        id: json["id"],
        title: json["title"],
        bannerUrl: json["bannerUrl"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "bannerUrl": bannerUrl,
        "description": description,
      };
}

class TrendingNewsResponse {
  late List<TrendingNews> results;

  TrendingNewsResponse({required this.results});

  TrendingNewsResponse.fromJson(Map<String, dynamic> json) {
    try {
      if (json['trendingNews'] != null) {
        results = <TrendingNews>[];
        json['trendingNews'].forEach((v) {
          results.add(TrendingNews.fromJson(v));
        });
      }
    } catch (error) {
      // ignore: avoid_print
      print("Error is $error");
    }
  }
}

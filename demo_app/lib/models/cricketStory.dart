class Story {
  Story({
    required this.id,
    required this.title,
    required this.iconUrl,
  });

  int id;
  String title;
  String iconUrl;

  factory Story.fromJson(Map<String, dynamic> json) => Story(
        id: json["id"],
        title: json["title"],
        iconUrl: json["iconUrl"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "iconUrl": iconUrl,
      };
}

class StoryResponse {
  late List<Story> results;

  StoryResponse({required this.results});

  StoryResponse.fromJson(Map<String, dynamic> json) {
    try {
      if (json['story'] != null) {
        results = <Story>[];
        json['story'].forEach((v) {
          results.add(Story.fromJson(v));
        });
      }
    } catch (error) {
      // ignore: avoid_print
      print("Error is $error");
    }
  }
}

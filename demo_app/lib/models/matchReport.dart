class MatchReport {
  MatchReport({
    required this.id,
    required this.tooltip,
    required this.isLive,
    required this.status,
    required this.title,
    required this.venue,
    required this.country1,
    required this.country2,
    required this.country1Session1,
    required this.country1Session2,
    required this.country2Session1,
    required this.country2Session2,
    required this.completedOver,
    required this.totalOver,
    required this.summary,
  });

  int id;
  String tooltip;
  bool isLive;
  String status;
  String title;
  String venue;
  String country1;
  String country2;
  String country1Session1;
  String country1Session2;
  String country2Session1;
  String country2Session2;
  String completedOver;
  String totalOver;
  String summary;

  factory MatchReport.fromJson(Map<String, dynamic> json) => MatchReport(
        id: json["id"],
        tooltip: json["tooltip"],
        isLive: json["isLive"],
        status: json["status"],
        title: json["title"],
        venue: json["venue"],
        country1: json["country1"],
        country2: json["country2"],
        country1Session1: json["country1Session1"],
        country1Session2: json["country1Session2"],
        country2Session1: json["country2Session1"],
        country2Session2: json["country2Session2"],
        completedOver: json["CompletedOver"],
        totalOver: json["totalOver"],
        summary: json["summary"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tooltip": tooltip,
        "isLive": isLive,
        "status": status,
        "title": title,
        "venue": venue,
        "country1": country1,
        "country2": country2,
        "country1Session1": country1Session1,
        "country1Session2": country1Session2,
        "country2Session1": country2Session1,
        "country2Session2": country2Session2,
        "CompletedOver": completedOver,
        "totalOver": totalOver,
        "summary": summary,
      };
}

class MatchReportResponse {
  late List<MatchReport> results;

  MatchReportResponse({required this.results});

  MatchReportResponse.fromJson(Map<String, dynamic> json) {
    try {
      if (json['matchReport'] != null) {
        results = <MatchReport>[];
        json['matchReport'].forEach((v) {
          results.add(MatchReport.fromJson(v));
        });
      }
    } catch (error) {
      // ignore: avoid_print
      print("Error is $error");
    }
  }
}

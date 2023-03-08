class EnvironmentConfig {
  static const baseURL = String.fromEnvironment('baseURL',
      defaultValue: "https://espn-fbe.webhooklabs.workers.dev/api/");
}

class Endpoints {
  static const matchReport = "matchReport";
  static const cricketStory = "cricketStory";
  static const trendingNews = "trendingNews";
}

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../network/endpoints.dart';
import '../models/cricketStory.dart';
import '../models/matchReport.dart';
import '../models/trendingNews.dart';

final dioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(
        baseUrl: EnvironmentConfig.baseURL,
      ),
    );
  },
);

// MatchReportAPI
final matchReportProvider = FutureProvider<List<MatchReport>>((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(Endpoints.matchReport);
  return MatchReportResponse.fromJson(response.data).results;
});

// CricketStoryAPI
final cricketStoryProvider = FutureProvider<List<Story>>((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(Endpoints.cricketStory);
  return StoryResponse.fromJson(response.data).results;
});

// TrendingNewsAPI
final trendingNewsProvider = FutureProvider<List<TrendingNews>>((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(Endpoints.trendingNews);
  return TrendingNewsResponse.fromJson(response.data).results;
});

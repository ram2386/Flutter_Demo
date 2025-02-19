import 'package:demo_app/Pages/post_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/providers.dart';
import 'actions_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trendingAsyncValue = ref.watch(trendingNewsProvider);
    return trendingAsyncValue.maybeWhen(
      orElse: () => const Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      data: (trendingNews) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ActionPage(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return PostListPage(
                  news: trendingNews[index],
                );
              },
              childCount: trendingNews.length,
            ),
          ),
        ],
      ),
    );
  }
}

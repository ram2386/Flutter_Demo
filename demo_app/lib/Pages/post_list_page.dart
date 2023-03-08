import 'package:demo_app/Pages/post_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Widgets/post_widget.dart';
import '../models/trendingNews.dart';

class PostListPage extends ConsumerWidget {
  final TrendingNews news;
  const PostListPage({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 4),
      child: PostWidget(
        title: news.title,
        description: news.description,
        imageUrl: news.bannerUrl,
        callback: () =>
            _navigate(to: const PostDetailPage(), withContext: context),
      ),
    );
  }
}

void _navigate({required Widget to, required BuildContext withContext}) {
  Navigator.push(withContext,
      MaterialPageRoute(builder: (context) => to, fullscreenDialog: true));
}

import 'package:demo_app/Pages/status_page.dart';
import 'package:demo_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Widgets/match_info_widget.dart';
import '../constants.dart';
import '../match_report/match_report_widget.dart';

class ActionPage extends ConsumerWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchReportAsyncValue = ref.watch(matchReportProvider);
    return matchReportAsyncValue.maybeWhen(
      orElse: () => const Center(child: CircularProgressIndicator()),
      data: (matchReport) => Wrap(
        children: [
          // Match Title
          Container(
            height: 40,
            color: kAccentColor,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: matchReport.length,
                itemBuilder: (BuildContext context, int index) {
                  return MatchInfoWidget(
                    title: matchReport[index].tooltip,
                    isSelected: index == 0 ? true : false,
                  );
                }),
          ),

          // Match Report
          Container(
            height: kMatchReportContainerHeight,
            color: kAccentColor,
            child: ListView.builder(
              itemCount: matchReport.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: kMatchReportWidth,
                  child: MatchReportWidget(
                    matchReport: matchReport[index],
                  ),
                );
              },
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          ),

          // Match Status
          const SizedBox(
            height: kStatusContainerHeight,
            child: StatusPage(),
          ),
        ],
      ),
    );
  }
}

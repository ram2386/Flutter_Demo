import 'package:demo_app/match_report/report_row.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../custom_widgets/custom_text.dart';
import '../models/matchReport.dart';

class MatchReportWidget extends StatelessWidget {
  final MatchReport matchReport;

  const MatchReportWidget({Key? key, required this.matchReport})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReportRow(
                leftSide: [
                  CustomText(
                    text: matchReport.status,
                    color: matchReport.isLive ? Colors.red : Colors.black,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text: " ● ${matchReport.title} ● ",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text: matchReport.venue,
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                  ),
                ],
                rightSide: const [
                  Icon(
                    Icons.notifications_none,
                  ),
                  Icon(Icons.bookmark_border_rounded)
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: "🇮🇳 ${matchReport.country1}",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
                rightSide: [
                  CustomText(
                    text: matchReport.isLive
                        ? "${matchReport.country1Session1} & ${matchReport.country1Session2}"
                        : "",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: matchReport.isLive
                        ? "🇦🇺 ${matchReport.country2} ●"
                        : "🇦🇺 ${matchReport.country2}",
                    color: kHighlightedFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
                rightSide: [
                  CustomText(
                    text: matchReport.isLive
                        ? "(${matchReport.completedOver} ov, T:${matchReport.totalOver})"
                        : "",
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                    size: 12,
                  ),
                  CustomText(
                    text: matchReport.isLive
                        ? "${matchReport.country2Session1} &"
                        : "",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text:
                        matchReport.isLive ? matchReport.country2Session2 : "",
                    color: kHighlightedFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: matchReport.summary,
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                    size: 12,
                  ),
                ],
              ),
              const Divider(
                color: kDividerColor,
                height: 1,
              ),
              const ReportRow(leftSide: [
                CustomText(
                  text: "Schedule  Report  Series",
                  color: kHighlightedFontColor,
                  weight: kTitleFontWeight,
                )
              ])
            ]),
      ),
    );
  }
}

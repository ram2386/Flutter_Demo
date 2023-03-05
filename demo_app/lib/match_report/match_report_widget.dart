import 'package:demo_app/match_report/report_row.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../custom_widgets/custom_text.dart';

class MatchReportWidget extends StatelessWidget {
  const MatchReportWidget({Key? key}) : super(key: key);

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
            children: const [
              ReportRow(
                leftSide: [
                  CustomText(
                    text: "LIVE",
                    color: Colors.red,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text: " ● 3rd Test ● ",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text: "Indore",
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                  ),
                ],
                rightSide: [
                  Icon(
                    Icons.notifications_none,
                  ),
                  Icon(Icons.bookmark_border_rounded)
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: "🇮🇳 IND",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
                rightSide: [
                  CustomText(
                    text: "109 & 163",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: "🇦🇺 AUS ●",
                    color: kHighlightedFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
                rightSide: [
                  CustomText(
                    text: "(10 ov, T:76)",
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                    size: 12,
                  ),
                  CustomText(
                    text: "109 & ",
                    color: kFontColor,
                    weight: kTitleFontWeight,
                  ),
                  CustomText(
                    text: "13/1",
                    color: kHighlightedFontColor,
                    weight: kTitleFontWeight,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  CustomText(
                    text: "Day 3 - Session 1: Australia need 63 runs.",
                    color: kFontColor,
                    weight: kParagraphFontWeight,
                    size: 12,
                  ),
                ],
              ),
              Divider(
                color: kDividerColor,
                height: 1,
              ),
              ReportRow(leftSide: [
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
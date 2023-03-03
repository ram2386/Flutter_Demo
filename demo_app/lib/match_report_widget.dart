import 'package:demo_app/custom_text.dart';
import 'package:demo_app/report_row.dart';
import 'package:flutter/material.dart';

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
            children: [
              ReportRow(
                leftSide: [
                  Custom_Text(
                    text: "LIVE",
                    color: Colors.red,
                    weight: FontWeight.bold,
                  ),
                  Custom_Text(
                    text: " ● 3rd Test ● ",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.bold,
                  ),
                  Custom_Text(
                    text: "Indore",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.w400,
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
                  Custom_Text(
                    text: "🇮🇳 IND",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.bold,
                  ),
                ],
                rightSide: [
                  Custom_Text(
                    text: "109 & 163",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  Custom_Text(
                    text: "🇦🇺 AUS ●",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.bold,
                  ),
                ],
                rightSide: [
                  Custom_Text(
                    text: "(10 ov, T:76)",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.w400,
                    size: 12,
                  ),
                  Custom_Text(
                    text: "109 & ",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.bold,
                  ),
                  Custom_Text(
                    text: "13/1",
                    color: Colors.black,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              ReportRow(
                leftSide: [
                  Custom_Text(
                    text: "Day 3 - Session 1: Australia need 63 runs.",
                    color: Colors.black.withAlpha(172),
                    weight: FontWeight.w400,
                    size: 12,
                  ),
                ],
              ),
              Divider(
                color: Colors.black.withAlpha(72),
                height: 1,
              ),
              ReportRow(leftSide: [
                Custom_Text(
                  text: "Schedule  Report  Series",
                  color: Colors.black.withAlpha(172),
                  weight: FontWeight.bold,
                )
              ])
            ]),
      ),
    );
  }
}

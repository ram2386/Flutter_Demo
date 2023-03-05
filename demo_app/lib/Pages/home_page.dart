import 'package:demo_app/Pages/post_detail_page.dart';
import 'package:demo_app/Widgets/post_widget.dart';
import 'package:demo_app/Widgets/status_widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/constants.dart';
import '../custom_widgets/custom_horizontal_list.dart';
import '../match_report/match_report_widget.dart';
import '../Widgets/match_info_widget.dart';
import '../models/match_info_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<MatchInfoList> getMatchInfoName() {
    return [
      MatchInfoList(title: 'Matches (17)'),
      MatchInfoList(title: 'IND v AUS (1)'),
      MatchInfoList(title: 'Irani Cup (1)'),
      MatchInfoList(title: 'BAN v ENG (1)'),
      MatchInfoList(title: 'SA v SRI (1)'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESPN CrickInfo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.doorbell_rounded),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.add_alarm_rounded),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Notifications",
        ),
      ]),
      body: ListView.builder(
          itemCount: 5,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return index == 0
                ? _getActionWidgets()
                : _getPostWidgets(ctx: context);
          }),
    );
  }

  Widget _getActionWidgets() {
    return Wrap(
      children: [
        // Match Title
        Container(
          height: 40,
          color: kAccentColor,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return MatchInfoWidget(
                  title: getMatchInfoName()[index].title,
                  isSelected: index == 0 ? true : false,
                );
              }),
        ),
        // Match Resport
        Container(
          height: kMatchReportContainerHeight,
          color: kAccentColor,
          child: const CustomHorizontalList(
            item: SizedBox(
              width: kMatchReportWidth,
              child: MatchReportWidget(),
            ),
            count: 5,
          ),
        ),
        // Match Status
        SizedBox(
          height: kStatusContainerHeight,
          child: CustomHorizontalList(
              item: StatusWidget(
                title: "World Cup ready..!!",
                imageUrl:
                    "https://static.toiimg.com/photo/msid-70152799/70152799.jpg",
              ),
              count: 10),
        ),
      ],
    );
  }

  Widget _getPostWidgets({required BuildContext ctx}) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 4),
      child: PostWidget(
        title:
            "Harmanpreet hopes WPL will reduce gap between India and Australia",
        description:
            "Says league will start to widen and improve talent pool in the country Says league will start to widen and improve talent pool in the country",
        imageUrl: "https://static.toiimg.com/photo/msid-70152799/70152799.jpg",
        callback: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
                builder: (context) => PostDetailPage(), fullscreenDialog: true),
          );
        },
      ),
    );
  }
}

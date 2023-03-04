import 'package:demo_app/match_report_widget.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
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
        body: GridView.count(
            crossAxisCount: 1,
            mainAxisSpacing: double.minPositive,
            childAspectRatio: 2,
            children: [
              Container(
                color: kAccentColor,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: const [
                    SizedBox(
                      width: 320,
                      child: MatchReportWidget(),
                    ),
                    SizedBox(
                      width: 320,
                      child: MatchReportWidget(),
                    ),
                    SizedBox(
                      width: 320,
                      child: MatchReportWidget(),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'Pages/ask_cric_info_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
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
          ],
        ),
        body: const HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              _navigate(to: const AskCricInfoPage(), withContext: context),
          child: const Icon(
            Icons.insert_comment_rounded,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

void _navigate({required Widget to, required BuildContext withContext}) {
  Navigator.push(withContext,
      MaterialPageRoute(builder: (context) => to, fullscreenDialog: true));
}

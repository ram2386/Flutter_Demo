import 'package:flutter/material.dart';
import 'ask_cric_info_page.dart';
import 'favourite_widget.dart';
import 'home_page.dart';
import 'notification_widget.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const FavoritePage(),
    const NotificationsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            _navigate(to: const AskCricInfoPage(), withContext: context),
        child: const Icon(
          Icons.insert_comment_rounded,
          color: Colors.yellow,
        ),
      ),
    );
  }

  void _navigate({required Widget to, required BuildContext withContext}) {
    Navigator.push(withContext,
        MaterialPageRoute(builder: (context) => to, fullscreenDialog: true));
  }
}

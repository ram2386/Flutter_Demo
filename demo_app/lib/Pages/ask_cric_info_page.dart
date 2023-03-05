import 'package:flutter/material.dart';

class AskCricInfoPage extends StatelessWidget {
  const AskCricInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Ask CricInfo'),
          leading: IconButton(
            icon: const Icon(Icons.close),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Image.asset(
        'assets/images/cric_info.jpeg',
        fit: BoxFit.cover,
      ),
    );
  }
}

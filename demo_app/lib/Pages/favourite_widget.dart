import 'package:flutter/material.dart';
import '../String_operation/string_interview.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Favorite Page Content',
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
              onPressed: () =>
                  // findDuplicateNo(context, [1, 2, 3, 4, 1, 2, 3]),
                  showCountOfEachCharacter(context, 'Rama'),
              child: const Text("Find duplicate no"))
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class ArchevedTasksScreen extends StatelessWidget {
  const ArchevedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Archeved Tasks',
            style: TextStyle(
          fontSize: 30.0,
        color: Colors.purple,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}

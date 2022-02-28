
import 'package:flutter/material.dart';

class DoneTasksScreen extends StatelessWidget {
  const DoneTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Done Tasks',
            style: TextStyle(
          fontSize: 30.0,
        color: Colors.purple,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}

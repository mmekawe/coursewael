
import 'package:coursewael/shared/compenents/components.dart';
import 'package:coursewael/shared/compenents/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTasksScreen extends StatelessWidget {
  const NewTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
        itemBuilder: (context, index) => buildTasksItem(),
        separatorBuilder: (context, index)=> Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: tasks.length,
    );

  }
}

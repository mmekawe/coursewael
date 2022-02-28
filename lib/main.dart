import 'package:flutter/material.dart';

import 'layout/home_layout.dart';
import 'moduels/home/home_screen.dart';
import 'moduels/login/login_screen.dart';
import 'moduels/messenger/messenger_screen.dart';

void main() {
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: HomeLayout(),

    );
  }
}






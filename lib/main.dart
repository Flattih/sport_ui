import 'package:flutter/material.dart';

import 'package:video_playerrr/screens/home_screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        )),
        debugShowCheckedModeBanner: false,
        title: 'Sport',
        home: const HomeScreen());
  }
}

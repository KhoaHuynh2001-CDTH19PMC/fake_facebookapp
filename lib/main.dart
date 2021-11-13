import 'package:flutter/material.dart';

import 'long.dart';

void main() {
  runApp(const FaceFakeApp());
}

class FaceFakeApp extends StatelessWidget {
  const FaceFakeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const LoginScreen(),
        '/mainscreen': (context) => const MainScreen(),
      },
    );
  }
}

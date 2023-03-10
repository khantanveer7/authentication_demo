import 'package:authentication_demo/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return MaterialApp(
      // Title of the app
      title: 'Flutter Demo',
      // Theme of the app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial route of the app
      home: const LoginScreen(),
    );
  }
}

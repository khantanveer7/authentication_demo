// Importing the required packages
import '/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps
void main() {
  // Run the app
  runApp(const MyApp());
}

// The MyApp class is the root of our application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    return MaterialApp(
      // Set the debugShowCheckedModeBanner property to false
      // To hide the debug banner
      debugShowCheckedModeBanner: false,
      // Title of the app
      title: 'Flutter Authentication Demo',
      // Theme of the app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initial route of the app
      home: const LoginScreen(),
    );
  }
}

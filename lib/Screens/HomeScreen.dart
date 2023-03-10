import 'package:authentication_demo/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Authentication Demo'),
        // Add a logout button
        actions: [
          // When the button is pressed, navigate to the login screen
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Navigate to the login screen
              // PushReplacement() will remove the current screen from the
              // Navigator's stack and replace it with the new screen
              // This will prevent the user from going back to the home screen
              // By pressing the back button
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  // Set the login screen as the new screen
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome! Login successful.',
              style: TextStyle(fontSize: 32.0),
            ),
          ],
        ),
      ),
    );
  }
}

import '/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers for the email and password text fields
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Return the login screen
    return Scaffold(
      // Set the app bar
      appBar: AppBar(
        title: const Text('Flutter Authentication Demo'),
      ),
      // Set the body
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Authentication Demo',
              style: TextStyle(fontSize: 32.0),
            ),
            const SizedBox(height: 16.0),
            // Email text field
            TextFormField(
              // Assign the controller to the text field
              controller: _emailController,
              // Set the text field's decoration
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            // Password text field
            TextFormField(
              // Assign the controller to the text field
              controller: _passwordController,
              // Set the text field's decoration
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              // Set the text field's obscureText property to true
              // To hide the password
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            // Sign in button
            ElevatedButton(
              // When the button is pressed, call the _signInWithEmailAndPassword()
              // Defined below
              onPressed: () => _signInWithEmailAndPassword(),

              child: const Text('Sign in'),
            ),
          ],
        ),
      ),
    );
  }

  // Method to sign in with email and password
  void _signInWithEmailAndPassword() {
    // Check if the email and password are correct

    if (_emailController.text == 'hello@gmail.com' &&
        _passwordController.text == 'admin') {
      // If the email and password are correct, navigate to the HomeScreen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
      // If the email and password are incorrect, show an error dialog
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // Return the dialog
          return AlertDialog(
            // Set the title of the dialog
            title: const Text('Error'),
            // Set the content of the dialog
            content: const Text('Invalid email or password'),
            // Set the actions of the dialog
            actions: [
              // Set the button to close the dialog
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}

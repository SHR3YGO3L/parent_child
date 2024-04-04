import 'package:flutter/material.dart';
import 'authentication_service.dart'; // Import your authentication service

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Enter your email address to reset your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call your authentication service to send password reset email
                AuthenticationService().sendPasswordResetEmail(email: emailController.text.trim()); // Pass the email entered by the user
                // Show a message or navigate back to login screen
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Email Sent'),
                    content: const Text('A password reset link has been sent to your email.'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context); // Navigate back to login screen
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

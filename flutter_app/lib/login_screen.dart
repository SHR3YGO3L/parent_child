import 'package:flutter/material.dart';
import 'CustomTextField.dart'; // Make sure to import your custom text field widget
import 'authentication_service.dart';
import 'signup_screen.dart'; // Import the SignupScreen
import 'forgot_password_email.dart'; // Import the ForgotPasswordScreen

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff), // Set background color
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.45,
                    width: MediaQuery.of(context).size.width * 0.45,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/logo.png', fit: BoxFit.cover),
                  ),
                ),
                const Text(
                  "Welcome back!",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                    color: Color(0xff000000),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    "Login to Continue",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Color(0xffa29b9b),
                    ),
                  ),
                ),
                CustomTextField(
                  controller: emailController,
                  labelText: 'Email',
                ),
                CustomTextField(
                  controller: passwordController,
                  labelText: 'Password',
                  isPassword: true,
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    AuthenticationService().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                      context: context,
                    );
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Navigate to the signup screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: const Text('Don\'t have an account? Sign up'),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the forgot password screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                    );
                  },
                  child: const Text('Forgot Password?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

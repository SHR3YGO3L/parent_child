import 'package:flutter/material.dart';
import 'CustomTextField.dart'; // Make sure to import your custom text field widget
import 'authentication_service.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f1f1),
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: const Color(0xff1d1b5a),
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(60.0)),
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.4,
                    width: MediaQuery.of(context).size.width * 0.4,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/logo1.png", fit: BoxFit.fitWidth),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: Text(
                      "Register",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 20,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 16),
              child: Flexible( // Wrap your Column with Flexible
                fit: FlexFit.loose, // Set fit to FlexFit.loose
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      labelText: 'Email',
                    ),
                    CustomTextField(
                      controller: passwordController,
                      labelText: 'Password',
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      onPressed: () {
                        AuthenticationService().signUp(
                          email: emailController.text.trim(),
                          password: passwordController.text.trim(),
                          context: context,
                        );
                      },
                      color: const Color(0xff1c1b56),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                        side: const BorderSide(color: Color(0xff3a57e8), width: 1),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          color: Color(0xffffffff),
                        ),
                      ),
                      height: 45,
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Already have an account?",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff08102c),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

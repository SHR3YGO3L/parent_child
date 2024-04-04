import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/login_screen.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signIn({required String email, required String password, required BuildContext context}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      // Navigate to the home screen after successful login
      Navigator.of(context).pushReplacementNamed('/home');
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      print('Firebase authentication error: ${e.message}');
      // You can show error message to the user using FlutterToast or any other method
    } catch (e) {
      // Handle other errors
      print('Error: $e');
    }
  }

  Future<void> signUp({required String email, required String password, required BuildContext context}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      // Navigate to the login screen after successful signup
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      print('Firebase authentication error: ${e.message}');
      // You can show error message to the user using FlutterToast or any other method
    } catch (e) {
      // Handle other errors
      print('Error: $e');
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async { // Fix the parameter here
    try {
      var firebaseAuth = _firebaseAuth;
      await firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print('Error sending password reset email: $e');
      throw e;
    }
  }
}
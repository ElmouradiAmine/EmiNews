import 'package:flutter/material.dart';

//Screens
import 'package:emi_event/screens/signin_screen.dart';
import 'package:emi_event/screens/signup_screen.dart';
import 'package:emi_event/screens/welcome_screen.dart';
import 'package:emi_event/screens/home_screen.dart';

//Method to push  the Sign in screen.
void navigateToSignInScreen(context) {
  Navigator.pushNamed(context, SignInScreen.id);
}

//Method to push  the Sign up screen.
void navigateToSignUpScreen(context) {
  Navigator.pushNamed(context, SignUpScreen.id);
}

//Method to push the home screen after a successful sign up
void navigateToHomeScreen(context) {
  Navigator.pushReplacementNamed(context, HomeScreen.id);
}

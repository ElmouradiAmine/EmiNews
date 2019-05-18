import 'package:flutter/material.dart';

//Components
import 'package:emi_event/components/round_border_button.dart';

//Constants
import 'package:emi_event/utils/constants.dart';
import 'package:emi_event/utils/navigator_methods.dart';

//This the welcome screen , the first screen that the user will see if he has never been logged in
// in the app.
//The UI contains just a logo and two buttons , one for sign in and the other one for sign up.
class WelcomeScreen extends StatefulWidget {
  static final String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Flexible(
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 100,
                  child: Image.asset('images/emi_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            RoundBorderButton(
              label: 'Sign in',
              color: kColorSignIn,
              onPressed: () {
                navigateToSignInScreen(context);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundBorderButton(
              label: 'Sign up',
              color: kColorSignUp,
              onPressed: () {
                navigateToSignUpScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

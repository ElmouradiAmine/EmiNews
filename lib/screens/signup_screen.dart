import 'package:flutter/material.dart';

//Components
import 'package:emi_event/components/round_border_button.dart';

//Constants
import 'package:emi_event/utils/constants.dart';
import 'package:emi_event/utils/navigator_methods.dart';

class SignUpScreen extends StatefulWidget {
  static final String id = 'signup_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
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
                  height: 200,
                  child: Image.asset('images/emi_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 90.0,
            ),
            TextField(
              autofocus: false,
              autocorrect: false,
              decoration: textInputDecoration('Email', Icons.email),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: false,
              autocorrect: false,
              obscureText: true,
              decoration: textInputDecoration('Password', Icons.lock),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: false,
              autocorrect: false,
              obscureText: true,
              decoration: textInputDecoration('Confirm Password', Icons.lock),
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundBorderButton(
              label: 'Sign up',
              color: kColorSignUp,
              onPressed: () {
                navigateToHomeScreen(context);
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('Already Signed in?'),
                onPressed: () {
                  navigateToSignInScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration textInputDecoration(String hintText, IconData icon) {
    return InputDecoration(
        hintText: hintText,
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Icon(icon),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadiusRoundedButton),
        ));
  }
}

import 'package:flutter/material.dart';

//Components
import 'package:emi_event/components/round_border_button.dart';

//Utils
import 'package:emi_event/utils/constants.dart';
import 'package:emi_event/utils/navigator_methods.dart';

class SignInScreen extends StatefulWidget {
  static final String id = 'signin_screen';
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
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
              decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      gapPadding: 12.0,
                      borderRadius:
                          BorderRadius.circular(kBorderRadiusRoundedButton))),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              autofocus: false,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(kBorderRadiusRoundedButton),
                  )),
            ),
            SizedBox(
              height: 50.0,
            ),
            RoundBorderButton(
              label: 'Sign in',
              color: kColorSignIn,
              onPressed: () {
                navigateToHomeScreen(context);
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text('Don\'t have an Account ?'),
                onPressed: () {
                  navigateToSignUpScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

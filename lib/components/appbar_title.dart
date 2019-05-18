import 'package:flutter/material.dart';

//Components
import 'custom_logo.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  final Widget image;

  const AppBarTitle({Key key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CustomLogo(
          image: image,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "EmiNews",
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ],
    );
  }
}

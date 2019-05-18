import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  final Widget image;

  const CustomLogo({Key key, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      child: image,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
    );
  }
}

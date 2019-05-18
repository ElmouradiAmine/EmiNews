import 'package:flutter/material.dart';
import 'package:emi_event/utils/constants.dart';

class RoundBorderButton extends StatelessWidget {
  final Color color;
  final String label;
  final VoidCallback onPressed;

  const RoundBorderButton(
      {@required this.color, @required this.label, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(kBorderRadiusRoundedButton),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(kBorderRadiusRoundedButton),
        child: Container(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          )),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadiusRoundedButton)),
        ),
      ),
    );
  }
}

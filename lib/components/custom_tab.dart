import 'package:flutter/material.dart';

//Utils
import 'package:emi_event/utils/constants.dart';

class CustomTab extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const CustomTab({Key key, this.label, this.icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            icon,
            color: color,
            size: 25.0,
          ),
          Flexible(
            child: Text(
              label,
              style: kTabLabelStyle,
            ),
          ),
        ],
      ),
    );
  }
}

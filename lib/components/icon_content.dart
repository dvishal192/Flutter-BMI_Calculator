import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconContent({super.key, required this.icon, required this.label});

  String label;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          label,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}

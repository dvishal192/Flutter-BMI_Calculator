import 'package:flutter/material.dart';
import '../components/icon_content.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {super.key,
      required this.onPress,
      required this.cardChild,
      required this.colour});

  Color colour;
  Widget cardChild;
  void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}

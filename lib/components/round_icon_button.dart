import 'package:flutter/material.dart';
import 'package:holding_gesture/holding_gesture.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.onPress, required this.icon});

  void Function() onPress;
  IconData icon = Icons.accessibility;

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      holdTimeout: const Duration(milliseconds: 100),
      onHold: onPress,
      child: RawMaterialButton(
        onPressed: onPress,
        onLongPress: onPress,
        elevation: 0.0,
        constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
        shape: const CircleBorder(),
        fillColor: const Color(0xFF4C4F5E),
        child: Icon(icon),
      ),
    );
  }
}

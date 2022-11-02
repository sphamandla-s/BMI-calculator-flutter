import 'package:flutter/material.dart';

class CardLayout extends StatelessWidget {
  final String label;
  final IconData cardIcon;
  const CardLayout(this.label, this.cardIcon, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          cardIcon,
          size: 60.0,
        ),
        const SizedBox(height: 10.0),
        Text(
          label,
          style: const TextStyle(fontSize: 25.0),
        ),
      ],
    );
  }
}

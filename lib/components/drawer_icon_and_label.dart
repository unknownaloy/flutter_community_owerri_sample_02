import 'package:flutter/material.dart';

class DrawerIconAndLabel extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const DrawerIconAndLabel({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: color,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Text(
          label,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}

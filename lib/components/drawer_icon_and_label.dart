import 'package:flutter/material.dart';

class DrawerIconAndLabel extends StatelessWidget {
  const DrawerIconAndLabel({
    Key? key,
    required this.icon,
    this.color = Colors.white,
    required this.label,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String label;

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

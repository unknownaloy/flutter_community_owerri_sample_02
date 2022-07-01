import 'package:flutter/material.dart';

class PetTile extends StatelessWidget {
  final String petType;

  const PetTile({Key? key, required this.petType,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350]!,
                    offset: const Offset(0.0, 6.0), //(x,y)
                    blurRadius: 8.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              petType,
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 16.0,
        ),
      ],
    );
  }
}

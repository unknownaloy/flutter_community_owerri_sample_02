import 'package:flutter/material.dart';

class PetTile extends StatelessWidget {
  const PetTile({Key? key, required this.petName,}) : super(key: key);

  final String petName;

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
                    offset: const Offset(0.0, 6.0),
                    blurRadius: 8.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              petName,
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
        const SizedBox(width: 16.0,),
      ],
    );
  }
}

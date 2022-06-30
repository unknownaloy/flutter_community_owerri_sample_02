import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/screens/detail_page.dart';

class PetCard extends StatelessWidget {
  const PetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BigInt testingOne = BigInt.from(1);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailPage(),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 224.0,
              decoration: BoxDecoration(
                color: Colors.blueGrey[300],
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
          ),
          Expanded(
            child: Container(
              height: 192.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[350]!,
                    offset: const Offset(0.0, 6.0), //(x,y)
                    blurRadius: 8.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

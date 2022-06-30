import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback onDrawerPressed;

  const CustomAppBar({
    Key? key,
    required this.onDrawerPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onDrawerPressed,
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("Location"),
              SizedBox(
                height: 4.0,
              ),
              Text("Kyiv, Ukraine"),
            ],
          ),
          const CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/custom_drawer.dart';
import 'package:flutter_community_owerri_week_02/screens/home_screen.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          CustomDrawer(),
          HomeScreen(), // This is what we've been implementing
        ],
      ),
    );
  }
}

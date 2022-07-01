import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/custom_drawer.dart';
import 'package:flutter_community_owerri_week_02/screens/home_screen.dart';

class FullView extends StatelessWidget {
  const FullView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: const [
            CustomDrawer(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/custom_app_bar.dart';
import 'package:flutter_community_owerri_week_02/components/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: _showDrawer
          ? const Offset(
              260,
              0,
            )
          : Offset.zero,
      child: Transform.scale(
        scale: _showDrawer ? 0.8 : 1.0,
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CustomAppBar(
                  onPressed: () {
                    setState(() {
                      _showDrawer = !_showDrawer;
                    });
                  },
                ),
              ),
              const Positioned(
                top: 80.0,
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: HomeBody(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

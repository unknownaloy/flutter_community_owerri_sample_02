import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/custom_app_bar.dart';
import 'package:flutter_community_owerri_week_02/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback onDrawerPressed;
  final Animation<Offset> slideAnimation;
  final Animation<double> scaleAnimation;
  final Animation<Decoration> decorationAnimation;

  const HomeScreen({
    Key? key,
    required this.onDrawerPressed,
    required this.slideAnimation,
    required this.scaleAnimation,
    required this.decorationAnimation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: scaleAnimation,
        child: AnimatedBuilder(
          animation: decorationAnimation,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CustomAppBar(
                  onDrawerPressed: onDrawerPressed,
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
          builder: (BuildContext context, Widget? child) {
            return Container(
              clipBehavior: Clip.antiAlias,
              decoration: decorationAnimation.value,
              child: child,
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_02/components/custom_drawer.dart';
import 'package:flutter_community_owerri_week_02/screens/home_screen.dart';

class FullView extends StatefulWidget {
  const FullView({Key? key}) : super(key: key);

  @override
  State<FullView> createState() => _FullViewState();
}

class _FullViewState extends State<FullView>
    with SingleTickerProviderStateMixin {
  bool _showDrawer = false;

  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _scaleAnimation;
  late final Animation<Decoration> _decorationAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _showDrawer = true;
        });
      }

      if (status == AnimationStatus.reverse) {
        setState(() {
          _showDrawer = false;
        });
      }
    });

    final parentController = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeIn,
    );

    _slideAnimation = Tween(
      begin: Offset.zero,
      end: const Offset(0.5, 0.0),
    ).animate(parentController);

    _scaleAnimation = Tween(
      begin: 1.0,
      end: 0.72,
    ).animate(parentController);

    _decorationAnimation = DecorationTween(
      begin: const BoxDecoration(color: Colors.white),
      end: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
    ).animate(parentController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const CustomDrawer(),
            HomeScreen(
              slideAnimation: _slideAnimation,
              scaleAnimation: _scaleAnimation,
              decorationAnimation: _decorationAnimation,
              onDrawerPressed: () {
                _showDrawer
                    ? _animationController.reverse()
                    : _animationController.forward();
              },
            ),
          ],
        ),
      ),
    );
  }
}

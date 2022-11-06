import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;
  late Tween<double> _tween;
  int? _currentIndex;

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(context, '/welcome');
    });
    _tween = Tween(begin: 0.0, end: 1.0);
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _animation = _tween.animate(_animationController);
    _animationController.forward();
    _changeIndex();
    super.initState();
  }

  _changeIndex() async {
    for (var i = 0; i < 2; i++) {
      await Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          _currentIndex = i;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF201F24),
      child: Container(
        alignment: Alignment.center,
        child: IndexedStack(
          alignment: Alignment.center,
          index: _currentIndex,
          children: [
            FadeTransition(
              opacity: _animation,
              child: const Image(
                image: AssetImage('assets/images/Uno_Platform_Symbol_RW1.png'),
                height: 150,
                width: 150,
              ),
            ),
            FadeTransition(
              opacity: _animation,
              child: const Image(
                image: AssetImage('assets/images/Splash_to_do 1.png'),
                height: 150,
                width: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

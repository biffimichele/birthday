import 'package:flutter/material.dart';
import 'package:travel/components/animated_start_button.dart';
import 'package:travel/widgets/gradient_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // hearts image
              Image.asset(
                'assets/hearts.png',
                filterQuality: FilterQuality.none,
                isAntiAlias: false,
                scale: 1,
                fit: BoxFit.fill,
              ),
              // Spacing
              SizedBox(height: 30),
              // Button + AnimationOnPress + Text
              AnimatedStartButton(),
            ],
          ),
        ),
      ),
    );
  }
}

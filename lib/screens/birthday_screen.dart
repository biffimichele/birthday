import 'package:flutter/material.dart';
import 'package:travel/components/animated_birthday_button.dart';
import 'package:travel/widgets/gradient_background.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  bool _showButton = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedPadding(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      padding:
                          EdgeInsets.only(bottom: _showButton ? 20.0 : 0.0),
                      child: SizedBox(
                        width: 400,
                        height: 400,
                        child: Image.asset(
                          'assets/hbAlice_alt.png',
                          filterQuality: FilterQuality.none,
                          isAntiAlias: false,
                          scale: 1,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    AnimatedOpacity(
                      opacity: _showButton ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      child: AnimatedBirthdayButton(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

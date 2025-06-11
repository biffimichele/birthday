import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel/widgets/mobile_frame.dart';

import '../screens/birthday_screen.dart';

class AnimatedStartButton extends StatefulWidget {
  const AnimatedStartButton({super.key});

  @override
  State<AnimatedStartButton> createState() => _AnimatedStartButtonState();
}

class _AnimatedStartButtonState extends State<AnimatedStartButton> {
  bool _pressed = false;

  void _handleTap() async {
    setState(() => _pressed = true);

    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MobileFrame(
            child: BirthdayScreen(),
          ),
        ),
      );
    }

    setState(() => _pressed = false);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 256,
            height: 128,
            child: Image.asset(
              _pressed ? 'assets/pressed_button.png' : 'assets/button.png',
              scale: 1,
              filterQuality: FilterQuality.none,
              isAntiAlias: false,
              fit: BoxFit.fill,
            ),
          ),
          Transform.translate(
            offset: _pressed ? const Offset(0, 12) : Offset.zero,
            child: Text(
              'Start',
              style: GoogleFonts.pixelifySans(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

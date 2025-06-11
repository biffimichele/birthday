import 'package:flutter/material.dart';
import 'package:travel/components/shaking_gift.dart';
import 'package:travel/screens/opened_gift_screen.dart';
import 'package:travel/widgets/gradient_background.dart';
import 'package:travel/widgets/mobile_frame.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MobileFrame(
                          child: OpenedGiftScreen(),
                        ),
                      ),
                    );
                  },
                  child: ShakingGift(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

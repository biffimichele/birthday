import 'package:flutter/material.dart';
import 'package:travel/colors.dart';

class MobileFrame extends StatelessWidget {
  final Widget child;

  const MobileFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.all(Radius.circular(24));

    return Scaffold(
      backgroundColor: AppColors.blackViolet,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 390),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.eggplant, // bordo bianco visibile
                borderRadius: borderRadius,
              ),
              padding: const EdgeInsets.all(9), // spessore del bordo
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.eggplant, // contenuto interno
                  borderRadius: borderRadius,
                ),
                child: ClipRRect(
                  borderRadius: borderRadius,
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

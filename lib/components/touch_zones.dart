import 'package:flutter/material.dart';

class TouchZones extends StatelessWidget {
  final Widget nextScreen;
  final Widget backScreen;

  const TouchZones({
    super.key,
    required this.nextScreen,
    required this.backScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // TAP LEFT TO GO BACK
        Positioned.fill(
          left: 0,
          right: MediaQuery.of(context).size.width / 2,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => backScreen,
                ),
              );
            },
          ),
        ),
        // TAP RIGHT TO GO NEXT
        Positioned.fill(
          right: 0,
          left: MediaQuery.of(context).size.width / 2,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => nextScreen,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

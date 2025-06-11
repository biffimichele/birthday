import 'package:flutter/material.dart';

class ShakingGift extends StatefulWidget {
  const ShakingGift({super.key});

  @override
  State<ShakingGift> createState() => _ShakingGiftState();
}

class _ShakingGiftState extends State<ShakingGift>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: -5), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -5, end: 5), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 5, end: -5), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -5, end: 5), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 5, end: 0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.stop(); // Ferma
        Future.delayed(const Duration(milliseconds: 1500), () {
          if (mounted) {
            _controller.forward(from: 0.0); // Riparte dopo pausa
          }
        });
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shakeAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_shakeAnimation.value, 0),
          child: child,
        );
      },
      child: SizedBox(
        width: 205,
        height: 250,
        child: Image.asset(
          'assets/gift-box.png',
          filterQuality: FilterQuality.none,
          isAntiAlias: false,
          scale: 1,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

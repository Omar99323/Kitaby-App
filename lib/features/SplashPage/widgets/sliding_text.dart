import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    // WIDGET TO BLUID ONLY ITS CHILD WHEN REBUILD
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        // WIDGET TO INITIALIZE THE CHILD POSITION
        return SlideTransition(
          position: animation,
          child: const Text(
            'Read Free Books',
            style: TextStyle(
              fontFamily: 'GT Sectra Fine',
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

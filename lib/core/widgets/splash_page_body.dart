import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class SplashPageBody extends StatelessWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(logo),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Read free books',
          style: TextStyle(
            fontFamily: 'GT Sectra Fine',
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

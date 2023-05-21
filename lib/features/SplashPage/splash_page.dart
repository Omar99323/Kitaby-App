import 'package:flutter/material.dart';
import 'package:kitaby/features/SplashPage/widgets/splash_page_body.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashPageBody(),
    );
  }
}

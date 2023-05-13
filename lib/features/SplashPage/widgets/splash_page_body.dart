import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/features/HomePage/home_page.dart';
import 'package:kitaby/features/SplashPage/widgets/sliding_text.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animecon;
  late Animation<Offset> anime;

  void animateMethod() {
    animecon = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    );

    anime = Tween<Offset>(
      begin: const Offset(0, 5),
      end: Offset.zero,
    ).animate(animecon);

    animecon.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => const HomePage(),
        transition: Transition.circularReveal,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    animateMethod();
    navigateToHome();
  }

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
        SlidingText(animation: anime),
      ],
    );
  }
}

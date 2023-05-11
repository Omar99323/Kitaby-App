import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class SplashPageBody extends StatefulWidget {
  const SplashPageBody({super.key});

  @override
  State<SplashPageBody> createState() => _SplashPageBodyState();
}

class _SplashPageBodyState extends State<SplashPageBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animecon;
  late Animation<Offset> anime;

  @override
  void initState() {
    super.initState();
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

  @override
  // ignore: unnecessary_overrides
  void dispose() {
    super.dispose();
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
        // WIDGET TO BLUID ONLY ITS CHILD WHEN REBUILD
        AnimatedBuilder(
          animation: anime,
          builder: (BuildContext context, Widget? child) {
            // WIDGET TO INITIALIZE THE CHILD POSITION
            return SlideTransition(
              position: anime,
              child: const Text(
                'Read free books',
                style: TextStyle(
                  fontFamily: 'GT Sectra Fine',
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}

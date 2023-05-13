import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/features/SplashPage/splash_page.dart';

void main() {
  runApp(const KitabyApp());
}

class KitabyApp extends StatelessWidget {
  const KitabyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: keyColor,
      ),
      home: const SplashPage(),
    );
  }

}

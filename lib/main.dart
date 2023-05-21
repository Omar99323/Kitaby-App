import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/features/HomePage/book_details_page.dart';
import 'package:kitaby/features/HomePage/home_page.dart';
import 'package:kitaby/features/SearchPage/search_page.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: keyColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        HomePage.id: (context) => const HomePage(),
        BookDetailsPage.id: (context) => const BookDetailsPage(),
        SearchPage.id: (context) => const SearchPage(),
      },
      initialRoute: SplashPage.id,
    );
  }
}

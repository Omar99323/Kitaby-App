import 'package:flutter/material.dart';
import 'package:kitaby/Features/HomePage/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePageBody(),
    );
  }
}

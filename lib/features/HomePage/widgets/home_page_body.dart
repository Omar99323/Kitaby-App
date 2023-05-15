import 'package:flutter/material.dart';
import 'package:kitaby/features/HomePage/widgets/custom_appbar.dart';
import 'package:kitaby/features/HomePage/widgets/top_listview.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: const [
          CustomAppBar(),
          TopListView(),
        ],
      ),
    );
  }
}




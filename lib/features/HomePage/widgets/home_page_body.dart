import 'package:flutter/material.dart';
import 'package:kitaby/features/HomePage/widgets/custom_appbar.dart';
import 'package:kitaby/features/HomePage/widgets/top_listview.dart';
import 'package:kitaby/features/HomePage/widgets/bottom_listview.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TopListView(),
                  Text(
                    'Best Seller',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  BottomListView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

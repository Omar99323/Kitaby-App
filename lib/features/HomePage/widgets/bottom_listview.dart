import 'package:flutter/material.dart';
import 'package:kitaby/features/HomePage/widgets/bottom_listview_item.dart';

class BottomListView extends StatelessWidget {
  const BottomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const BottomListViewItem();
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .02,
          );
        },
        itemCount: 6,
      ),
    );
  }
}

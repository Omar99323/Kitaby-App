import 'package:flutter/material.dart';
import 'package:kitaby/Features/HomePage/widgets/bottom_listview_item.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
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
          itemCount: 10,
        ),
      ),
    );
  }
}

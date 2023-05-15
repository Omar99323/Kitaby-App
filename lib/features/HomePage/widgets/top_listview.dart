import 'package:flutter/material.dart';
import 'package:kitaby/features/HomePage/widgets/top_listview_item.dart';

class TopListView extends StatelessWidget {
  const TopListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const TopListViewItem();
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: MediaQuery.of(context).size.width * .04,
        ),
      ),
    );
  }
}
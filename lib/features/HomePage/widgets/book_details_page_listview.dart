import 'package:flutter/material.dart';
import 'package:kitaby/features/HomePage/widgets/book_details_listview_item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const BookDetailsListViewItem();
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: MediaQuery.of(context).size.width * .02,
          ),
        ),
      ),
    );
  }
}

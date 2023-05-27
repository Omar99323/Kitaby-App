import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/core/methods/navigator_method.dart';
import 'package:kitaby/Features/HomePage/book_details_page.dart';

class TopListViewItem extends StatelessWidget {
  const TopListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => navMethod(context, BookDetailsPage.id),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              testimg,
            ),
          ),
        ),
      ),
    );
  }
}

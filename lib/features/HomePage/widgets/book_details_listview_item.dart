import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class BookDetailsListViewItem extends StatelessWidget {
  const BookDetailsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.18,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            testimg,
          ),
        ),
      ),
    );
  }
}

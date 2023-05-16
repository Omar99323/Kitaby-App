import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class TopListViewItem extends StatelessWidget {
  const TopListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            15,
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
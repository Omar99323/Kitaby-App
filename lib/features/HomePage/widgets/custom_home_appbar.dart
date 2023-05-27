import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/core/methods/navigator_method.dart';
import 'package:kitaby/Features/SearchPage/search_page.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          logo,
          height: 20,
        ),
        IconButton(
          onPressed: () {
            navMethod(context, SearchPage.id);
          },
          icon: const Icon(
            Icons.search,
            size: 35,
          ),
        )
      ],
    );
  }
}

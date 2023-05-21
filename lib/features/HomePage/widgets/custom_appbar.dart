import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/core/methods/navigator_method.dart';
import 'package:kitaby/features/SearchPage/search_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Row(
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
      ),
    );
  }
}

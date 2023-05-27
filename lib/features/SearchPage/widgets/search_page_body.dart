import 'package:flutter/material.dart';
import 'package:kitaby/Features/SearchPage/widgets/search_listview.dart';
import 'package:kitaby/Features/SearchPage/widgets/search_text_field.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchTextField(),
            const SearchListView(),
          ],
        ),
      ),
    );
  }
}

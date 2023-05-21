import 'package:flutter/material.dart';
import 'package:kitaby/features/SearchPage/widgets/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static const id = 'SearchPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPageBody(),
    );
  }
}

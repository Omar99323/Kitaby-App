import 'package:flutter/material.dart';
import 'package:kitaby/Features/HomePage/widgets/book_details_page_body.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key});
  static const id = 'BookDetailsPage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsPageBody(),
    );
  }
}

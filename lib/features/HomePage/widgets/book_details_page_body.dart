import 'package:flutter/material.dart';
import 'package:kitaby/core/utils/styls.dart';
import 'package:kitaby/features/HomePage/widgets/custom_book_details_appbar.dart';
import 'package:kitaby/features/HomePage/widgets/cusrom_book_image.dart';

class BookDetailsPageBody extends StatelessWidget {
  const BookDetailsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomBookDetailsAppBar(),
            const CustomBookImage(),
            const Text(
              'The Jungle Book',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                color: Colors.white70,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  size: 18,
                  color: Colors.yellow[300],
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '4.8',
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '(2390)',
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

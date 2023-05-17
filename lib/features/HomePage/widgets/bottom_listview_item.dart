import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class BottomListViewItem extends StatelessWidget {
  const BottomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.width * 0.15,
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
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.08,
        ),
        Column(
          children: const [
            Text('sssssssssss'),
            Text('sssssssssss'),
          ],
        ),
      ],
    );
  }
}

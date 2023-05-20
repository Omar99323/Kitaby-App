import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';
import 'package:kitaby/core/utils/styls.dart';

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
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'The Jungle Book',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: 'GT Sectra Fine',
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle14.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    r'19.99 €',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
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
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

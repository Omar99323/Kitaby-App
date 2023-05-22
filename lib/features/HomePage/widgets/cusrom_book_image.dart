import 'package:flutter/material.dart';
import 'package:kitaby/core/constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.3,
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
    );
  }
}

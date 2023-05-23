import 'package:flutter/material.dart';
import 'package:kitaby/core/utils/styls.dart';

class CustomBookButton extends StatelessWidget {
  const CustomBookButton({
    super.key,
    this.edgebottomLeft = 0,
    this.edgebottomRight = 0,
    this.edgetopLeft = 0,
    this.edgetopRight = 0,
    this.color = Colors.white,
    required this.text,
    this.textcolor = Colors.black,
    this.fontsize = 18,
  });

  final double edgebottomLeft;
  final double edgebottomRight;
  final double edgetopLeft;
  final double edgetopRight;
  final double fontsize;
  final Color color;
  final String text;
  final Color textcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * .43,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(edgebottomLeft),
          bottomRight: Radius.circular(edgebottomRight),
          topLeft: Radius.circular(edgetopLeft),
          topRight: Radius.circular(edgetopRight),
        ),
      ),
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textcolor,
          fontWeight: FontWeight.w900,
          fontSize: fontsize,
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  const BigText({
    Key? key,
    required this.text,
    this.size = 14,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

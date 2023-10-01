// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double? size;
  const SmallText({
    Key? key,
    required this.text,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
      ),
    );
    ;
  }
}

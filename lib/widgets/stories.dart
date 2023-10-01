// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/profile_picture.dart';

class StoriesWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  const StoriesWidget({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //image
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(251, 170, 71, 1),
                  Color.fromRGBO(217, 26, 70, 1),
                  Color.fromRGBO(166, 15, 147, 1),
                ],
              ),
            ),
            child: ProfilePictureWidget(imagePath: imagePath),
          ),
          //user Id
          Text(text),
        ],
      ),
    );
  }
}

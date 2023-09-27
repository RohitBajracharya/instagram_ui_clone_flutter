import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/stories.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          StoriesWidget(),
        ],
      ),
    );
  }
}

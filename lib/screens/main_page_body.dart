import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/posts.dart';
import 'package:instagram_clone/widgets/stories.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: const Column(
          children: [
            //stories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Your Story",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Mahi",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "ViratKohli",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Smith",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Starc",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Babar_Azam",
                  ),
                  StoriesWidget(
                    imagePath: "assets/images/pp1.jpg",
                    text: "Karan KC",
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey),
            //posts
            PostWidget(imagePath: "assets/images/post1.jpg"),
            PostWidget(imagePath: "assets/images/post1.jpg"),
          ],
        ),
      ),
    );
  }
}

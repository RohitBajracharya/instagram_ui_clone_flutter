import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/big_text.dart';
import 'package:instagram_clone/widgets/posts.dart';
import 'package:instagram_clone/widgets/stories.dart';

import '../widgets/app_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          //appbar
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 10.0,
            ),
            height: 64,
            color: AppColors.barColor,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //camera icon
                AppIcon(
                  icon: Icons.camera_alt_outlined,
                ),
                BigText(text: 'Instagram'),
                //live and dm icon
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      AppIcon(icon: Icons.live_tv),
                      SizedBox(
                        width: 24,
                      ),
                      AppIcon(icon: Icons.send),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //main body
          Expanded(
            child: Container(
              color: AppColors.backgroundColor,
              child: ListView(
                children: [
                  //stories
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7, // Replace with the actual number of stories
                      itemBuilder: (context, index) {
                        return StoriesWidget(
                          imagePath: "assets/images/pp1.jpg",
                          text: "Story $index",
                        );
                      },
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  //posts
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3, // Replace with the actual number of posts
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(bottom: 4.0),
                        child: PostWidget(
                          imagePath: "assets/images/post1.jpg",
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

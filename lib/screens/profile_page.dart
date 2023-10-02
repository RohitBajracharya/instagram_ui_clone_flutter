import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/bar/profile_page_app_bar.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_icon.dart';
import 'package:instagram_clone/widgets/big_text.dart';
import 'package:instagram_clone/widgets/profile_picture.dart';
import 'package:instagram_clone/widgets/small_text.dart';
import 'package:instagram_clone/widgets/stories.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            //appbar
            ProfilePageAppBar(),
            //account info
            Container(
              color: AppColors.barColor,
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Column(
                children: [
                  // profile picture and stats
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //profile picture
                      Container(
                        child: CircleAvatar(
                          minRadius: 40,
                          child: Container(
                            width: 96,
                            height: 96,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/pp1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // posts
                      const Column(
                        children: [
                          BigText(
                            text: "54",
                            fontWeight: FontWeight.bold,
                            size: 18,
                          ),
                          BigText(
                            text: "Posts",
                            size: 18,
                          ),
                        ],
                      ),
                      //followers
                      const Column(
                        children: [
                          BigText(
                            text: "834",
                            fontWeight: FontWeight.bold,
                            size: 18,
                          ),
                          BigText(
                            text: "Followers",
                            size: 18,
                          ),
                        ],
                      ),
                      //following
                      const Column(
                        children: [
                          BigText(
                            text: "162",
                            fontWeight: FontWeight.bold,
                            size: 18,
                          ),
                          BigText(
                            text: "Following",
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                  // name and bio
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    width: double.infinity,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: "Jacob West",
                          fontWeight: FontWeight.bold,
                        ),
                        BigText(
                          text: "Digital googies designer @pixsellz\nEverything is designed",
                        ),
                      ],
                    ),
                  ),
                  //edit profile button
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(16.0),
                      padding: const EdgeInsets.all(8.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: const Center(
                        child: BigText(
                          text: "Edit Profile",
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                  //stories
                  const Row(
                    children: [
                      StoriesWidget(
                        imagePath: "assets/images/plus.png",
                        text: "New",
                        storyViewed: true,
                      ),
                      StoriesWidget(
                        imagePath: "assets/images/pp1.jpg",
                        text: "Friends",
                        storyViewed: true,
                      ),
                      StoriesWidget(
                        imagePath: "assets/images/pp1.jpg",
                        text: "Friends",
                        storyViewed: true,
                      ),
                      StoriesWidget(
                        imagePath: "assets/images/pp1.jpg",
                        text: "Friends",
                        storyViewed: true,
                      ),
                    ],
                  ),
                  Divider(color: Colors.grey, thickness: 0.2),
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

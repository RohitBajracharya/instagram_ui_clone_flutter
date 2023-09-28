// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dots_indicator/dots_indicator.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/app_icon.dart';
import 'package:instagram_clone/widgets/big_text.dart';
import 'package:instagram_clone/widgets/profile_picture.dart';
import 'package:instagram_clone/widgets/small_text.dart';

class PostWidget extends StatelessWidget {
  final String imagePath;
  const PostWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //top bar
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile picture, username, address
                Row(
                  children: [
                    //profile picture
                    ProfilePictureWidget(
                      imagePath: "assets/images/pp1.jpg",
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    //username , address
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "MS_Dhoni"),
                        SmallText(text: "Ranchi, India"),
                      ],
                    ),
                  ],
                ),
                // ...
                Row(
                  children: [
                    AppIcon(
                      icon: Icons.circle,
                      size: 6,
                    ),
                    SizedBox(width: 1.5),
                    AppIcon(
                      icon: Icons.circle,
                      size: 6,
                    ),
                    SizedBox(width: 1.5),
                    AppIcon(
                      icon: Icons.circle,
                      size: 6,
                    ),
                  ],
                ),
              ],
            ),
          ),
          //image section
          Stack(
            children: [
              //image
              Container(
                width: double.infinity,
                height: 375,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //image number
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 34,
                  height: 26,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: const Center(
                    child: Text(
                      "1/3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //bottom bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //reaction, pagination and bookmark
                Row(
                  children: [
                    //like, comment and share
                    const Row(
                      children: [
                        AppIcon(
                          icon: FluentSystemIcons.ic_fluent_heart_regular,
                          size: 32,
                        ),
                        SizedBox(width: 5),
                        AppIcon(
                          icon: FluentSystemIcons.ic_fluent_comment_regular,
                          size: 32,
                        ),
                        SizedBox(width: 5),
                        AppIcon(
                          icon:
                              FluentSystemIcons.ic_fluent_share_android_regular,
                          size: 32,
                        ),
                      ],
                    ),
                    SizedBox(width: 100),
                    // dots ...
                    DotsIndicator(
                      dotsCount: 3,
                      position: 0,
                      decorator: const DotsDecorator(
                        spacing:
                            EdgeInsets.all(4.0), // Adjust the spacing as needed
                        activeColor: Colors.blue,
                        size: Size(
                          7.0,
                          7.0,
                        ),
                        activeSize: Size(
                          7.0,
                          7.0,
                        ),
                        // Decrease the activeSize to make dots smaller
                      ),
                    ),
                    SizedBox(width: 180),
                    //bookmark
                    const AppIcon(
                      icon: FluentSystemIcons.ic_fluent_bookmark_regular,
                      size: 32,
                    )
                  ],
                ),
                const SizedBox(height: 8),
                //likes info
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      //profile picture
                      ProfilePictureWidget(
                        imagePath: "assets/images/pp1.jpg",
                        size: 12,
                      ),
                      SizedBox(width: 10),
                      //liked by text
                      Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          children: [
                            TextSpan(
                              text: 'Liked by ',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                              text: 'craig_love',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            TextSpan(
                              text: '44,686 others',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                //caption section
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 5.0),
                  child: Row(
                    children: [
                      //username
                      BigText(text: "MS_Dhoni"),
                      SizedBox(width: 10),
                      //caption
                      SmallText(
                        text:
                            "Playing Beach Cricket with Friends is always fun",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

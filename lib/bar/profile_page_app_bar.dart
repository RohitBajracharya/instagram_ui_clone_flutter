import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/big_text.dart';

import '../widgets/app_icon.dart';

class ProfilePageAppBar extends StatelessWidget {
  const ProfilePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.barColor,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: width / 6),
          Expanded(
            child: Container(
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppIcon(icon: FluentSystemIcons.ic_fluent_lock_filled),
                    SizedBox(width: 5),
                    BigText(
                      text: "jacob_w",
                      size: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: 5),
                    AppIcon(icon: FluentSystemIcons.ic_fluent_chevron_down_regular),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: width / 8,
            child: const AppIcon(
              icon: Icons.menu_rounded,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

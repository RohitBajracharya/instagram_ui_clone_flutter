import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

import '../widgets/app_icon.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      height: 79,
      color: Colors.black54,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppIcon(
            icon: FluentSystemIcons.ic_fluent_home_filled,
            size: 32,
          ),
          AppIcon(
            icon: FluentSystemIcons.ic_fluent_search_filled,
            size: 32,
          ),
          AppIcon(
            icon: FluentSystemIcons.ic_fluent_add_circle_regular,
            size: 32,
          ),
          AppIcon(
            icon: FluentSystemIcons.ic_fluent_heart_regular,
            size: 32,
          ),
          AppIcon(
            icon: Icons.person,
            size: 32,
          ),
        ],
      ),
    );
  }
}

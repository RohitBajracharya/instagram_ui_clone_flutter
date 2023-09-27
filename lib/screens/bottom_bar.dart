import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../widgets/app_icon.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: AppIcon(icon: FluentSystemIcons.ic_fluent_home_filled),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AppIcon(icon: FluentSystemIcons.ic_fluent_search_filled),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: AppIcon(icon: FluentSystemIcons.ic_fluent_add_circle_regular),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: AppIcon(icon: FluentSystemIcons.ic_fluent_heart_regular),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            child: Icon(Icons.person),
            backgroundColor: Colors.transparent,
          ),
          label: 'School',
        ),
      ],
    );
  }
}

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/bottom_bar.dart';
import 'package:instagram_clone/widgets/app_icon.dart';

import 'main_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        leading: const AppIcon(
          icon: Icons.camera_alt_outlined,
        ),
        title: const Center(child: Text('Instagram')),
        actions: const [
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
          )
        ],
      ),
      body: const MainPageBody(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

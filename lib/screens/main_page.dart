import 'package:flutter/material.dart';
import 'package:instagram_clone/controller/screen_generator.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_icon.dart';
import 'package:instagram_clone/bar/bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenGenerator(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

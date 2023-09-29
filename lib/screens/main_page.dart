import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/screen_generator.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_icon.dart';
import 'package:instagram_clone/widgets/bottom_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const ScreenGenerator(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}

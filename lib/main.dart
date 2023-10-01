import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:instagram_clone/screens/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark(),
      home: const MainPage(),
    );
  }
}

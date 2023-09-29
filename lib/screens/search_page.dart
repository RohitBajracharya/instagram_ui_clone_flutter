import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:instagram_clone/widgets/app_icon.dart';
import 'package:instagram_clone/widgets/big_text.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //search section and categories section
              Container(
                color: AppColors.barColor,
                child: Column(
                  children: [
                    //search field and live icon
                    Container(
                      child: Row(
                        children: [
                          //search field
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 6.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // border: Border.all(color: Colors.grey),
                                  color: Color.fromRGBO(38, 38, 38, 1),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: AppIcon(
                                      icon: FluentSystemIcons
                                          .ic_fluent_search_filled,
                                      color: Colors.grey,
                                    ),
                                    hintText: "Search",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //live icon
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: const AppIcon(
                              icon: FluentSystemIcons.ic_fluent_qr_code_regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //categories
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppIcon(
                                      icon: Icons.live_tv,
                                      size: 20,
                                    ),
                                    BigText(text: "IGTV"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppIcon(icon: Icons.shopping_bag, size: 20),
                                    BigText(text: "Shop"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BigText(text: "Style"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BigText(text: "Sports"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BigText(text: "Movie"),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 6.0),
                              Container(
                                width: 75,
                                height: 32,
                                decoration: BoxDecoration(
                                  color: AppColors.backgroundColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BigText(text: "Auto"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //main body
            ],
          ),
        ),
      ),
    );
  }
}

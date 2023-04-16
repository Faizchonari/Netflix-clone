import 'package:flutter/material.dart';
import 'package:netfliex_clone/screen/downloads/downloads.dart';
import 'package:netfliex_clone/screen/fast_laugth/fast_laughs.dart';
import 'package:netfliex_clone/screen/home_page/home.dart';
import 'package:netfliex_clone/screen/news_hot/news_hot.dart';
import 'package:netfliex_clone/screen/search/search.dart';
import 'package:netfliex_clone/widgets/bottom_navigationbar.dart';

class MainHomeScreen extends StatelessWidget {
  MainHomeScreen({super.key});
  final _screens = [
    Home(),
    NewsHot(),
    FastLaughs(),
    Search(),
    Downloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: screenChangeNotifer,
        builder: (context, newIndex, _) {
          return _screens[newIndex];
        },
      ),
      bottomNavigationBar: MainBottomNavigationBar(),
    );
  }
}

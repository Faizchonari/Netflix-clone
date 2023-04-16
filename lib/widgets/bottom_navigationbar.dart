import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netfliex_clone/core/constaints.dart';

ValueNotifier<int> screenChangeNotifer = ValueNotifier(0);

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: screenChangeNotifer,
      builder: (context, newindex, _) {
        return BottomNavigationBar(
            currentIndex: newindex,
            onTap: (value) {
              screenChangeNotifer.value = value;
            },
            type: BottomNavigationBarType.fixed,
            backgroundColor: kbackgroundColor,
            selectedItemColor: Colors.white,
            unselectedItemColor: klightgryColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection), label: 'News & Hot'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.faceSmileBeam),
                  label: 'Fast laught'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: FaIcon(FontAwesomeIcons.circleArrowDown),
                  label: 'Downloads'),
            ]);
      },
    );
  }
}

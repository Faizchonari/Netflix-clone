import 'package:flutter/material.dart';
import 'package:netfliex_clone/screen/home_page/widgets/main_card.dart';
import 'package:netfliex_clone/screen/home_page/widgets/number_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            MainCard(title: 'Relesed in the Past year'),
            MainCard(title: 'Trending Now'),
            NumberCard(),
          ],
        ),
      ),
    );
  }
}

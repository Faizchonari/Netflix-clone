import 'package:flutter/material.dart';
import 'package:netfliex_clone/core/constaints.dart';
import 'package:netfliex_clone/screen/news_hot/widget/coming_soon.dart';
import 'package:netfliex_clone/screen/news_hot/widget/everyone_watching.dart';
import 'package:netfliex_clone/widgets/appbar_widget.dart';

class NewsHot extends StatelessWidget {
  const NewsHot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: 'News & Hot'),
          ),
          body: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                    padding: EdgeInsets.all(10),
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                    indicator: BoxDecoration(
                        color: kwhite, borderRadius: BorderRadius.circular(30)),
                    tabs: [
                      tabTitle('🍿 Coming soon'),
                      tabTitle('👀 Evereyons\'s watching'),
                    ]),
                Expanded(
                  child: TabBarView(children: [
                    ComingSoon(),
                    EveryoneWarching(),
                  ]),
                ),
              ],
            ),
          )),
    );
  }

  Widget tabTitle(String title) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Tab(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}

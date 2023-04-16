import 'package:flutter/material.dart';
import 'package:netfliex_clone/screen/fast_laugth/widget/video_list.dart';

class FastLaughs extends StatelessWidget {
  const FastLaughs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(
              10,
              (index) => Vediolist(
                    intex: index,
                  )),
        ),
      ),
    );
  }
}

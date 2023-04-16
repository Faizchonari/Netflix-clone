import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfliex_clone/core/constaints.dart';

import '../../widgets/appbar_widget.dart';
import 'dart:math';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final imagelist = [
      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/sv1xJUazXeYqALzczSZ3O6nkH75.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/xnopI5Xtky18MPhK40cZAGAOVeV.jpg',
      'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    ];

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: 'Downloads'),
        ),
        body: ListView(
          children: [
            kheightspacing,
            Row(
              children: [
                Icon(
                  CupertinoIcons.settings,
                  color: kwhite,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Smart Downloads',
                    style:
                        TextStyle(color: kwhite, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Introducing Downloads for You',
                  style: TextStyle(
                      color: kwhite, fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'We\'ll download a personalised selection of \nfilms and programmes for you,so there\'s \nalawys something to watch on you\n device',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: size.width * 0.55,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff414141),
                        radius: size.width * 0.29,
                      ),
                    ),
                    centerImage(
                      angle: size.width * 0.035,
                      bottommargin: size.height * 0.065,
                      imageSize: size.width * 0.23,
                      imageindex: 2,
                      imagelist: imagelist,
                      leftmargin: 160,
                      rightmargin: 0,
                    ),
                    centerImage(
                        imagelist: imagelist,
                        imageindex: 1,
                        angle: size.width * -0.035,
                        imageSize: size.width * 0.23,
                        bottommargin: size.height * 0.065,
                        leftmargin: 0,
                        rightmargin: 160),
                    centerImage(
                        imagelist: imagelist,
                        imageindex: 0,
                        angle: 0,
                        imageSize: size.width * 0.26,
                        bottommargin: size.height * 0.04,
                        leftmargin: 0,
                        rightmargin: 0),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Buttons(
                  size: size.width * 0.3,
                  buttonColor: Color(0xff5168dc),
                  text: 'Set Up',
                  textcolor: kwhite,
                ),
                Buttons(
                  size: size.width * 0.05,
                  buttonColor: kwhite,
                  text: 'See what You Can Download',
                  textcolor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Transform centerImage({
    required List<String> imagelist,
    required int imageindex,
    required double angle,
    required double imageSize,
    required double bottommargin,
    required double leftmargin,
    required double rightmargin,
  }) {
    return Transform.rotate(
      angle: pi * angle / 180,
      child: Container(
        margin: EdgeInsets.only(
            bottom: bottommargin, left: leftmargin, right: rightmargin),
        width: imageSize,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imagelist[imageindex],
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.size,
      required this.buttonColor,
      required this.text,
      required this.textcolor});

  final double size;
  final Color buttonColor;
  final String text;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: EdgeInsets.only(
            right: size,
            left: size,
          )),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: textcolor),
      ),
    );
  }
}

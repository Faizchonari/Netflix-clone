import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netfliex_clone/core/constaints.dart';
import 'package:netfliex_clone/screen/fast_laugth/widget/vedieo_controller_buttons.dart';

class Vediolist extends StatelessWidget {
  const Vediolist({super.key, required this.intex});
  final int intex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[intex],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  radius: 28,
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.volumeXmark,
                      color: kwhite,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/4D0PpNI0kmP58hgrwGC3wCjxhnm.jpg',
                      ),
                    ),
                    VedieoController(
                        onpressed: () {},
                        icon: CupertinoIcons.add,
                        iconsize: 35,
                        title: 'My List'),
                    VedieoController(
                        onpressed: () {},
                        icon: FontAwesomeIcons.solidPaperPlane,
                        iconsize: 35,
                        title: 'Share'),
                    VedieoController(
                        onpressed: () {},
                        icon: Icons.play_arrow,
                        title: 'Play',
                        iconsize: 45),
                    VedieoController(
                      onpressed: () {},
                      icon: FontAwesomeIcons.solidFaceLaughBeam,
                      title: 'LOL',
                      iconsize: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

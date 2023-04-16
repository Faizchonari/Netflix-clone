import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constaints.dart';
import 'iconlabel.dart';

class EveryoneWarching extends StatelessWidget {
  const EveryoneWarching({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Firends',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kwhite),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40, top: 8),
                          child: AutoSizeText(
                            'This hit sitcom follows the merry misadvetures of six 20-something as they navigate the pitfalls of work,life and love in 1990 Manhattan',
                            maxLines: 4,
                            style: TextStyle(color: kgrylight300),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            SizedBox(
                              height: size.height * 0.33,
                              child: ClipRRect(
                                child: Image.network(
                                  'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/uDgy6hyPd82kOHh6I95FLtLnj6p.jpg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.black54,
                                radius: 25,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: FaIcon(
                                    FontAwesomeIcons.volumeXmark,
                                    color: kwhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'The Last of Us ',
                                style: TextStyle(
                                    color: kwhite,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              children: [
                                IconswithLabel(
                                    icon: FontAwesomeIcons.paperPlane,
                                    label: 'Share'),
                                IconswithLabel(
                                    icon: CupertinoIcons.add, label: 'My List'),
                                IconswithLabel(
                                    icon: Icons.play_arrow, label: 'Play'),
                                SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          ],
                        ),
                        Text(
                          'Coming on Friday',
                          style: TextStyle(
                              fontSize: 15,
                              color: kgrylight300,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: SizedBox(
                            width: 40,
                            child: Image.asset('images/logo.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: AutoSizeText(
                            'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure',
                            maxLines: 4,
                            style: TextStyle(color: kgrylight300),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    );
                  }
                },
                itemCount: 5),
          ),
        ],
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netfliex_clone/core/constaints.dart';

import 'iconlabel.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.1,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Jan\n',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 15),
                      children: [
                        TextSpan(
                            text: '14',
                            style: TextStyle(
                                color: kwhite,
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        SizedBox(
                          height: size.height * 0.29,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/ovM06PdF3M8wvKb06i4sjW3xoww.jpg',
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
                            text: 'Avater',
                            style: TextStyle(
                                color: kwhite,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          children: [
                            IconswithLabel(
                                icon: Icons.notifications, label: 'Info'),
                            IconswithLabel(
                                icon: Icons.info_outline, label: 'Info'),
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
                    Text(
                      'Avater',
                      style: TextStyle(
                          color: kwhite,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: AutoSizeText(
                        'Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure',
                        maxLines: 4,
                        style: TextStyle(color: kgrylight300),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 25,
            ),
        itemCount: 5);
  }
}

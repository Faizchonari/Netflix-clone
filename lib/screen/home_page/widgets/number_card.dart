import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../widgets/commen_tilte.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonTitle(title: "Top 10 TV Shows in India Today"),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.26,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nCzzQKGijVzfGFg42id7uDLOjY5.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: BorderedText(
                      strokeWidth: 5,
                      strokeColor: Colors.grey,
                      child: Text("${index - 1 + 2}",
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 90,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../widgets/commen_tilte.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonTitle(title: title),
        SizedBox(
          width: double.infinity,
          height: size.height * 0.26,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return SizedBox(
                width: size.width * 0.3,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nCzzQKGijVzfGFg42id7uDLOjY5.jpg',
                        )),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

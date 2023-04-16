import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constaints.dart';

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: GoogleFonts.secularOne(
              color: kwhite,
              fontSize: 29,
            ),
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.cast,
              color: Colors.white,
              size: 28,
            ),
            Container(
              margin: EdgeInsets.all(13),
              color: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.red,
              ),
            )
          ],
        )
      ],
    );
  }
}

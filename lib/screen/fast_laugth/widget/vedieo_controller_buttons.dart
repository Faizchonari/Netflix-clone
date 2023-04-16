import 'package:flutter/material.dart';

import '../../../core/constaints.dart';

class VedieoController extends StatelessWidget {
  const VedieoController(
      {super.key,
      required this.onpressed,
      required this.icon,
      required this.iconsize,
      required this.title});
  final Function()? onpressed;
  final String title;
  final IconData icon;
  final double iconsize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          IconButton(
            onPressed: onpressed,
            icon: Icon(
              icon,
              color: kwhite,
              size: iconsize,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: kwhite),
          )
        ],
      ),
    );
  }
}

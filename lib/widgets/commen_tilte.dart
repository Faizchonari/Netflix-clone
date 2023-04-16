import 'package:flutter/material.dart';

import '../core/constaints.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        left: 5,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: kwhite,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

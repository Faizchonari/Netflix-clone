import 'package:flutter/material.dart';

import '../../../core/constaints.dart';

class IconswithLabel extends StatelessWidget {
  const IconswithLabel({super.key, required this.icon, required this.label});
  final String label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: kwhite,
            size: 25,
          ),
        ),
        Text(
          label,
          style: TextStyle(color: kgrylight300),
        ),
      ],
    );
  }
}

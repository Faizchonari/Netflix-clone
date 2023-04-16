import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfliex_clone/core/constaints.dart';
import 'package:netfliex_clone/widgets/commen_tilte.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CommonTitle(title: 'Populer Searches'),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.37,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/lXzu1IZmzDulGeqqrknoE7c5hak.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 5, right: size.width * 0.35),
                          child: Text(
                            'Movie',
                            style: TextStyle(
                                color: kwhite, fontWeight: FontWeight.bold),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.play_circle,
                              size: size.height * 0.065,
                              color: kwhite,
                            ))
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

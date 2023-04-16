import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netfliex_clone/core/constaints.dart';
import 'package:netfliex_clone/screen/search/widgets/search_result.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CupertinoSearchTextField(
                      padding: EdgeInsets.all(10),
                      backgroundColor: kgry,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          CupertinoIcons.search,
                          size: 25,
                          color: Colors.white54,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          color: kwhite.withOpacity(0.9), fontSize: 15),
                    ),
                  )
                ],
              ),

              SearchResult(),
              // SearchIdle(),
            ],
          ),
        ),
      ),
    );
  }
}

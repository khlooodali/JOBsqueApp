import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/searchinput.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SearchInput(
              //   ontap: () {},
              // ),

              //typesearch resent
              //resentsearches
              //typesearch popular
              //popularsearches
            ],
          ),
        ),
      ),
    );
  }
}

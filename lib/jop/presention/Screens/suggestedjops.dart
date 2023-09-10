//listofsuggesteditem;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/suggestedjopitem.dart';

class SuggestedJops extends StatelessWidget {
  const SuggestedJops({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 220.h,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16.w,
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, index) {
            return const SuggestedJopItem();
          }),
    );
  }
}

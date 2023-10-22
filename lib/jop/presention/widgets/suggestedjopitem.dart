import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/appcolors.dart';
import 'applyforsuggestedjop.dart';
import 'jopcategoryitem.dart';
import 'titlejopofitem.dart';

class SuggestedJopItem extends StatelessWidget {
  const SuggestedJopItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 210.h,
      decoration: BoxDecoration(
          color: AppColor.primaryColor900,
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JopItemTitle(
              isSuggest: true,
              index: index,
            ),
            JopCategory(
              isSuggest: true,
              index: index,
            ),
            SizedBox(
              height: 20.h,
            ),
            ApplyForJop(
              index: index,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/appcolors.dart';

class ChatDate extends StatelessWidget {
  const ChatDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 21.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 113.w,
            height: 1.h,
            color: AppColor.naturalColor400,
          ),
          Text(
            'Today,  Nov 13',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Container(
            width: 113.w,
            height: 1.h,
            color: AppColor.naturalColor400,
          ),
        ],
      ),
    );
  }
}

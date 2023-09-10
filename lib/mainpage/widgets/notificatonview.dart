import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48.w,
      height: 48.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(width: 1, color: AppColor.naturalColor300)),
      child: Center(
        child: SvgPicture.asset(
          'assets/icons/notification.svg',
          fit: BoxFit.scaleDown,
          width: 24.w,
          height: 24.h,
        ),
      ),
    );
  }
}

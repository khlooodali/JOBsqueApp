import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

AppBar getAppbarJop(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: SvgPicture.asset(
        'assets/icons/arrow-left.svg',
        width: 24,
        height: 24,
        fit: BoxFit.scaleDown,
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: Theme.of(context).textTheme.displayLarge,
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 24.w),
        child: SvgPicture.asset(
          'assets/icons/savedfill.svg',
          width: 24,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
      )
    ],
  );
}

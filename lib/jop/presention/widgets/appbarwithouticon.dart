import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

AppBar AppBarWithoutIcon(
    {required BuildContext context,
    required String title,
    required VoidCallback ontap}) {
  return AppBar(
    leading: Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: GestureDetector(
        onTap: ontap,
        child: SvgPicture.asset(
          'assets/icons/arrow-left.svg',
          width: 24,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: Theme.of(context).textTheme.displayLarge,
    ),
  );
}

import 'package:findjop/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar getAppBar(
    {required VoidCallback tap, required bool isback, required bool islogo}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      islogo
          ? Padding(
              padding: EdgeInsets.only(right: 24.w, top: 19.h),
              child: SvgPicture.asset(
                logopath,
                width: 81,
                height: 19,
                fit: BoxFit.scaleDown,
              ),
            )
          : const SizedBox(),
    ],
    leading: isback
        ? GestureDetector(
            onTap: tap,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, top: 19.h),
              child: SvgPicture.asset(
                'assets/icons/arrow-left.svg',
                width: 24,
                height: 24,
                fit: BoxFit.scaleDown,
              ),
            ))
        : const SizedBox(),
  );
}

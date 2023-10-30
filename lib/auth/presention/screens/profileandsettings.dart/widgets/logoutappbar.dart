import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

SliverAppBar logoutAppBar() {
  return SliverAppBar(
      expandedHeight: 195.0,
      flexibleSpace: Container(
        height: 195.0,
        decoration: const BoxDecoration(color: AppColor.primaryColor100),
      ),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Profile',
        style: TextStyle(fontSize: 16, color: AppColor.naturalColor900),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 24.w, top: 19.h),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              'assets/icons/logout.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        )
      ],
      leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, top: 19.h),
            child: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
          )));
}

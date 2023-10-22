import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/appcolors.dart';

class MoreOptionsItem extends StatelessWidget {
  const MoreOptionsItem(
      {super.key,
      required this.icon,
      required this.optionName,
      required this.ontap});
  final String icon;
  final String optionName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 49.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: AppColor.naturalColor300),
              borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/$icon.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      optionName,
                      style: TextStyle(
                          fontSize: 16.sp, color: AppColor.naturalColor900),
                    )
                  ],
                ),
                IconButton(
                    onPressed: ontap,
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        )
      ],
    );
  }
}

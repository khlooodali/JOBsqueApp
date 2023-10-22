import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/savedjoptitle.dart';

class SavedJopItem extends StatelessWidget {
  const SavedJopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const SavedjopTitle(),
          SizedBox(
            height: 16.h,
          ),
          Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Posted 2 days ago',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColor.naturalColor700),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/clock.svg',
                    width: 24.w,
                    height: 24.w,
                    fit: BoxFit.scaleDown,
                    color: AppColor.successColor700,
                  ),
                  const Text('Be an early applicant',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.naturalColor700))
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          const Divider(
            thickness: 1,
            color: AppColor.naturalColor200,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

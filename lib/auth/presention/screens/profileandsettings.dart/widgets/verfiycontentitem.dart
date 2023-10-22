import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

class VerificationContentItem extends StatelessWidget {
  const VerificationContentItem(
      {super.key, required this.content, required this.icon});
  final String content;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 44.w,
              height: 44.h,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primaryColor100,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/$icon.svg',
                  //color: AppColor.primaryColor500,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              content,
              maxLines: 5,
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}

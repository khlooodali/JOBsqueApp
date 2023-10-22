import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

class SearchInputForHelp extends StatelessWidget {
  const SearchInputForHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(color: AppColor.naturalColor300, width: 1)),
      child: Row(
        children: [
          SizedBox(
            width: 12.w,
          ),
          SvgPicture.asset(
            'assets/icons/search.svg',
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            width: 12.w,
          ),
          Text(
            'What can we help?',
            style: Theme.of(context).inputDecorationTheme.hintStyle,
          ),
        ],
      ),
    );
  }
}

import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/Screens/searchjop/widgets/searchinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/customwidgets/helpermethod/navigationwithanimate.dart';
import '../../../jop/presention/Screens/searchjop/searchview.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(createRoute(const SearchView()));
      },
      child: Container(
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
              'Search.....',
              style: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
          ],
        ),
      ),
    );
  }
}

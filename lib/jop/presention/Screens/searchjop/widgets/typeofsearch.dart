import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class TypeSearch extends StatelessWidget {
  const TypeSearch({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Container(
        height: 40.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppColor.naturalColor100,
            border: Border.all(color: AppColor.naturalColor200, width: 1)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
          child: Text(
            text,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}

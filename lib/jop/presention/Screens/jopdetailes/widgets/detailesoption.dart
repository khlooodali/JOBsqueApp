import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    required this.optionName,
    required this.isactive,
  });
  final bool isactive;
  final String optionName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 109.w,
      height: 46.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color:
              isactive ? AppColor.primaryColor900 : AppColor.naturalColor100),
      child: Center(
        child: Text(
          optionName,
          style: isactive
              ? Theme.of(context).textTheme.displayMedium
              : Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}

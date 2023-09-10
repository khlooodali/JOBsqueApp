import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/appcolors.dart';

class JopCategory extends StatelessWidget {
  JopCategory({super.key, required this.isSuggest});
  final bool isSuggest;

  List<String> list = ["Fulltime", "Remote", "Senior"];

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 8, //runSpacing: 16,
        children: [
          ...List.generate(
            list.length,
            (index) => Container(
              width: isSuggest ? 82.w : 65.w,
              height: isSuggest ? 32.h : 26.h,
              decoration: BoxDecoration(
                  color: isSuggest
                      ? Colors.white.withOpacity(.14)
                      : AppColor.primaryColor100,
                  borderRadius: BorderRadius.circular(100.r)),
              child: Center(
                  child: Text(
                list[index],
                style: isSuggest
                    ? Theme.of(context).textTheme.displayMedium
                    : TextStyle(
                        fontSize: 12.sp, color: AppColor.primaryColor500),
              )),
            ),
          )
        ]);
  }
}

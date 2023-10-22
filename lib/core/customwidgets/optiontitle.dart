import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/appcolors.dart';

class OptionTitle extends StatelessWidget {
  const OptionTitle(
      {super.key,
      required this.title,
      required this.isReadMore,
      this.ontap,
      this.textbtn,
      required this.isCenterTitle,
      required this.height});
  final String title;
  final bool isCenterTitle;
  final bool isReadMore;
  final VoidCallback? ontap;
  final String? textbtn;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height.h,
      decoration: BoxDecoration(
        color: AppColor.naturalColor100,
        border: Border.all(width: 1, color: AppColor.naturalColor200),
      ),
      child: isReadMore
          ? Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  TextButton(
                      onPressed: ontap,
                      child: Text(
                        textbtn!,
                        style: Theme.of(context).textTheme.labelSmall,
                      ))
                ],
              ),
            )
          : isCenterTitle
              ? Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 24.w),
                  child: Text(
                    title,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
    );
  }
}

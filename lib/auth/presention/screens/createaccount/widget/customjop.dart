import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JopItemView extends StatelessWidget {
  const JopItemView(
      {super.key,
      required this.isSelected,
      required this.imagepath,
      required this.title});
  final bool isSelected;
  final String imagepath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156.w,
      height: 125.h,
      decoration: BoxDecoration(
          color:
              isSelected ? AppColor.primaryColor100 : AppColor.naturalColor300,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 2,
            color: isSelected
                ? AppColor.primaryColor500
                : AppColor.naturalColor300,
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                  color: isSelected ? Colors.white : AppColor.naturalColor300,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: isSelected
                        ? AppColor.primaryColor500
                        : AppColor.naturalColor300,
                  )),
              child: Center(
                child: SvgPicture.asset(
                  imagepath,
                ),
                // child: Image.network(
                //   imagepath,
                //   width: 24,
                //   height: 24,
                //   fit: BoxFit.scaleDown,
                // ),
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.displayLarge,
            )
          ],
        ),
      ),
    );
  }
}

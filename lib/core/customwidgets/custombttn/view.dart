import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusttomButton extends StatelessWidget {
  const CusttomButton({
    super.key,
    required this.ontapped,
    required this.text,
    required this.isActive,
    required this.width,
  });
  final VoidCallback ontapped;
  final String text;
  final bool isActive;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapped,
      child: Container(
        width: width,
        height: 48.h,
        decoration: BoxDecoration(
          color: isActive ? AppColor.primaryColor500 : AppColor.naturalColor300,
          borderRadius: BorderRadius.circular(1000),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.sp,
                color: isActive ? Colors.white : AppColor.naturalColor500,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResentSearchItem extends StatelessWidget {
  const ResentSearchItem({super.key, required this.joptitle});
  final String joptitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/clock.svg',
                width: 24.w,
                height: 24.h,
                fit: BoxFit.scaleDown,
              ),
              Text(
                joptitle,
                style: Theme.of(context).textTheme.displayLarge,
              )
            ],
          ),
          SvgPicture.asset(
            'assets/icons/redclose.svg',
            width: 24.w,
            height: 24.h,
            fit: BoxFit.scaleDown,
          ),
        ],
      ),
    );
  }
}

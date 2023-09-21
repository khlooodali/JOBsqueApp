import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepTitle extends StatelessWidget {
  const StepTitle({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: 4.h,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 14, color: AppColor.naturalColor500),
        ),
        SizedBox(
          height: 28.h,
        ),
      ],
    );
  }
}

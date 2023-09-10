import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomOutLineIconBtnn extends StatelessWidget {
  const CustomOutLineIconBtnn(
      {super.key,
      required this.ontap,
      required this.icon,
      required this.label});
  final VoidCallback ontap;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154.w,
      height: 46.h,
      child: OutlinedButton.icon(
        onPressed: ontap,
        icon: SvgPicture.asset(
          'assets/icons/$icon.svg',
          fit: BoxFit.scaleDown,
        ),
        label: Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}

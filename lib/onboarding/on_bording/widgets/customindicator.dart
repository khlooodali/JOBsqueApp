import 'package:dots_indicator/dots_indicator.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, @required this.index});
  final int? index;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
        position: index!,
        //reversed: true,
        decorator: const DotsDecorator(
          color: AppColor.primaryColor200,
          activeColor: AppColor.primaryColor500,
        ),
        dotsCount: 3);
  }
}

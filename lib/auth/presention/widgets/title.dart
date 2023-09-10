import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountTitle extends StatelessWidget {
  const CreateAccountTitle(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.space});
  final String title;
  final String subtitle;
  final double space;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 41.h,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: space,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

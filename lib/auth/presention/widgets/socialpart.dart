import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customsocialbtn/view.dart';

class SignUpWithSocialView extends StatelessWidget {
  const SignUpWithSocialView({super.key, required this.operationName});
  final String operationName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.w,
              height: 2,
              color: AppColor.naturalColor300,
            ),
            Text(
              'Or $operationName With Account',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(
              width: 50.w,
              height: 2,
              color: AppColor.naturalColor300,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomOutLineIconBtnn(
                ontap: () {}, icon: 'google', label: 'Google'),
            CustomOutLineIconBtnn(
                ontap: () {}, icon: 'Facebook', label: 'Facebook')
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../custombttn/view.dart';

class SuccessOperationView extends StatelessWidget {
  const SuccessOperationView(
      {super.key,
      required this.ontap,
      required this.bttnText,
      required this.title,
      required this.subTitle,
      required this.iconName,
      this.isbuttn});
  final VoidCallback ontap;
  final String bttnText;
  final String title;
  final String subTitle;
  final String iconName;
  final bool? isbuttn;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 137.h,
            ),
            Center(
                child: SvgPicture.asset(
              'assets/icons/$iconName.svg',
              width: 137.w,
              height: 142.h,
              fit: BoxFit.scaleDown,
            )),
            SizedBox(
              height: 24.h,
            ),
            Text(
              textAlign: TextAlign.center,
              title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              textAlign: TextAlign.center,
              subTitle,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Spacer(),
            isbuttn!
                ? Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: CusttomButton(
                        width: MediaQuery.sizeOf(context).width,
                        ontapped: ontap,
                        text: bttnText,
                        isActive: true),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

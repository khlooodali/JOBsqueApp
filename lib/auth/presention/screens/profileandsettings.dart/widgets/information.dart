import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class InformationView extends StatelessWidget {
  const InformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 70.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const InformationItem(
              titleInfo: 'Applied',
              total: '64',
            ),
            Container(
              width: 1.w,
              height: 44.h,
              color: AppColor.naturalColor300,
            ),
            const InformationItem(
              titleInfo: 'Reviewed',
              total: '23',
            ),
            Container(
              width: 1.w,
              height: 44.h,
              color: AppColor.naturalColor300,
            ),
            const InformationItem(
              titleInfo: 'Contacted',
              total: '16',
            ),
          ],
        ),
      ),
    );
  }
}

class InformationItem extends StatelessWidget {
  const InformationItem(
      {super.key, required this.titleInfo, required this.total});
  final String titleInfo;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleInfo,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          total,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}

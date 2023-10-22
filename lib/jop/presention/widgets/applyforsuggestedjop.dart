import 'package:findjop/jop/presention/widgets/pricejop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/customwidgets/custombttn/view.dart';

class ApplyForJop extends StatelessWidget {
  const ApplyForJop({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //price per month
        PriceOfJopItem(
          isSuggested: true,
          index: index,
        ),
        CusttomButton(
          ontapped: () {},
          text: 'Apply Now',
          isActive: true,
          width: 120.w,
        )
      ],
    );
  }
}

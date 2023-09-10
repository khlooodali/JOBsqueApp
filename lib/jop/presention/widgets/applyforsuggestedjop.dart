import 'package:findjop/jop/presention/widgets/pricejop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/customwidgets/custombttn/view.dart';

class ApplyForJop extends StatelessWidget {
  const ApplyForJop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //price per month
        const PriceOfJopItem(isSuggested: true),
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

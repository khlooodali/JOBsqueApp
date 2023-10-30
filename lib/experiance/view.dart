import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/widgets/appbarwithouticon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/experincebodyview.dart';

class Exeprience extends StatelessWidget {
  const Exeprience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context, ontap: () {}, title: 'Experience'),
      body: SingleChildScrollView(
        child: Container(
          width: 327.w,
          height: 606.h,
          margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(width: 1.r, color: AppColor.naturalColor300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const ExperinceBody(),
        ),
      ),
    );
  }
}

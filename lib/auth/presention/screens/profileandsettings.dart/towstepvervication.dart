import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'selectstep.dart';
import 'view.dart';
import 'widgets/customverfiy.dart';
import 'widgets/verfiycontentitem.dart';

class TowStepVerficationView extends StatefulWidget {
  const TowStepVerficationView({super.key});

  @override
  State<TowStepVerficationView> createState() => _TowStepVerficationViewState();
}

class _TowStepVerficationViewState extends State<TowStepVerficationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Two-step verification'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.h,
            ),
            const CustomVerfiy(),
            SizedBox(
              height: 32.h,
            ),
            const VerificationContentItem(
              content:
                  'Two-step verification provides\n additional security by asking for a\n verification code every time you\n log in on another device.',
              icon: 'lock',
            ),
            SizedBox(
              height: 20.h,
            ),
            const VerificationContentItem(
              content:
                  'Two-step verification provides\n additional security by asking for a\n verification code every time you\n log in on another device.',
              icon: 'external-drive',
            ),
            const Spacer(),
            CusttomButton(
                ontapped: () {
                  nextTo(context, const SelectStepVerficationView());
                },
                text: 'Next',
                isActive: true,
                width: MediaQuery.of(context).size.width),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}

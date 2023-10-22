import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/appcolors.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'verficationwithemail.dart';
import 'widgets/customverfiy.dart';

class SelectStepVerficationView extends StatefulWidget {
  const SelectStepVerficationView({super.key});

  @override
  State<SelectStepVerficationView> createState() =>
      _SelectStepVerficationViewState();
}

class _SelectStepVerficationViewState extends State<SelectStepVerficationView> {
  String? droupval;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context, ontap: () {}, title: 'Two-step verification'),
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
            Text(
              'Select a verification method',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border:
                        Border.all(width: 1, color: AppColor.naturalColor300)),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                  ),
                  child: Center(
                    child: DropdownButton(
                        isExpanded: true,
                        hint: Text('Email Adress (sms)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColor.naturalColor900)),
                        value: droupval,
                        underline: const SizedBox.shrink(),
                        items: [
                          DropdownMenuItem(
                            value: "1",
                            child: Text(
                              'Email Adress (sms)',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColor.naturalColor900),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "2",
                            child: Text('Telephone Number (sms)',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.naturalColor900)),
                          ),
                        ],
                        onChanged: (value) {
                          droupval = value!;
                          setState(() {});
                        }),
                  ),
                ),
              ),
            ),
            Text(
              'Note : Turning this feature will sign you out anywhere\nyou’re currently signed in. We will then require you to\n enter a verification code the first time you sign with a\n new device or Joby mobile application.',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const Spacer(),
            CusttomButton(
                ontapped: () {
                  nextTo(context, VerficationWithEmail(), isreplace: true);
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

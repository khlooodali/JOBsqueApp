import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customtextfiledcountry.dart';
import '../../../../core/theme/appcolors.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  bool val = true;

  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Phone Number'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.h,
            ),
            Text(
              'Main phone number',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
              child: CountryFiled(
                hint: '0100-666-7234',
                controller: _phoneController,
                isStar: false,
                text: '',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Use the phone number to reset your\n password',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                CupertinoSwitch(
                  applyTheme: true,
                  thumbColor: val == true
                      ? AppColor.primaryColor100
                      : AppColor.naturalColor100,
                  trackColor: val == true
                      ? AppColor.primaryColor500
                      : AppColor.naturalColor300,
                  value: val,
                  onChanged: (value) {
                    val = value;
                    setState(() {});
                  },
                )
              ],
            ),
            const Spacer(),
            CusttomButton(
                ontapped: () {},
                text: 'Save',
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

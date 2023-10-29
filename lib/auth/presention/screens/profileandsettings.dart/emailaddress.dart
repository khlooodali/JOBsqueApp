import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/customtextfield/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';

class EmailAddressView extends StatelessWidget {
  EmailAddressView({super.key});
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Email address'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44.h,
            ),
            Text(
              'Main e-mail address',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(
              height: 8.h,
            ),
            CustomTextField(
              isBold: true,
              hint: '',
              iconname: 'sms',
              controller: _emailController,
              validation: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter Your Email';
                }
                final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                if (!emailRegex.hasMatch(value)) {
                  return 'Please Enter Valid Email';
                } else {
                  return null;
                }
              },
              type: TextInputType.emailAddress,
              ispassword: false,
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

import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customtextfield/view.dart';
import '../../../../core/customwidgets/customtextfiledcountry.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';

class SendCodeSmsView extends StatefulWidget {
  const SendCodeSmsView({super.key});

  @override
  State<SendCodeSmsView> createState() => _SendCodeSmsViewState();
}

class _SendCodeSmsViewState extends State<SendCodeSmsView> {
  bool val = true;

  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

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
            Padding(
              padding: EdgeInsets.only(top: 36.h, bottom: 4.h),
              child: Text(
                'Add phone number',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Text(
              'We will send a verification code to this number',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, bottom: 20.h),
              child: CountryFiled(
                hint: '0100-666-7234', //phone number
                controller: _phoneController,
                isStar: false,
                text: '',
              ),
            ),
            Text(
              'Enter your password',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
              child: CustomTextField(
                ispassword: true,
                isBold: false,
                hint: 'Passwoed',
                iconname: 'lock',
                siconname: 'hide',
                // tappedicon: () {
                //   ishide = !ishide;
                //   setState(() {});
                // },
                controller: _passwordController,
                type: TextInputType.visiblePassword,
                //errorText: 'Password must be at least 8 characters',

                validation: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Confirm Password';
                  }
                  final passwordRegex =
                      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                  if (!passwordRegex.hasMatch(value)) {
                    return 'Password must be at least 8 characters, including at least one letter and one number';
                  }

                  return null;
                },
              ),
            ),
            const Spacer(),
            CusttomButton(
                ontapped: () {},
                text: 'Send Code',
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

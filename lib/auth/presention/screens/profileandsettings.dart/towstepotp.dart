import 'package:findjop/auth/presention/screens/profileandsettings.dart/loginandsequrity.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/customwidgets/otp/view.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';

class TowStepVerificationOtpView extends StatefulWidget {
  const TowStepVerificationOtpView({super.key});

  @override
  State<TowStepVerificationOtpView> createState() =>
      _TowStepVerificationOtpViewState();
}

class _TowStepVerificationOtpViewState
    extends State<TowStepVerificationOtpView> {
  final OtpFieldController _controller = OtpFieldController();

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
              padding: EdgeInsets.only(top: 36.h, bottom: 12.h),
              child: Text(
                'Enter the 6 digit code',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            Text(
              'Please confirm your account by entering the\n authorization code sen to ****-****-7234',
              style: Theme.of(context).textTheme.displaySmall,
            ),

            ///otp
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 16.h),
              child: OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 44.h,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.box,
                onCompleted: (String pincode) {
                  print("Completed: $pincode");
                },
              ),
            ),
            TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    text: 'Resend code ',
                    style: TextStyle(
                        fontSize: 16.sp, color: AppColor.naturalColor400),
                    children: <TextSpan>[
                      TextSpan(
                        text: '42s',
                        style: TextStyle(
                            fontSize: 16.sp, color: AppColor.primaryColor500),
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            CusttomButton(
                ontapped: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      backgroundColor: AppColor.successColor700,
                      content:
                          Text('You have Successfully Verified Your account')));
                  nextTo(context, const LoginAndSecurity(), iskeep: false);
                },
                text: 'Verify',
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

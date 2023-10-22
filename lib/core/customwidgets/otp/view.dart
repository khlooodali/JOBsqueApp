import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class PinCodeView extends StatelessWidget {
  PinCodeView({super.key});
  final OtpFieldController _controller = OtpFieldController();
  @override
  Widget build(BuildContext context) {
    // return OtpTextField(
    //   fieldWidth: 44.w,
    //   numberOfFields: 6,
    //   borderColor: AppColor.naturalColor300,
    //   //set to true to show as box or false to show as dash
    //   showFieldAsBox: true,
    //   hasCustomInputDecoration: true,
    //   decoration: InputDecoration(
    //       border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.r),
    //   )),
    //   //runs when a code is typed in
    //   onCodeChanged: (String code) {
    //     //handle validation or checks here
    //   },
    //   //runs when every textfield is filled
    //   // onSubmit: (String verificationCode) {
    //   //   showDialog(
    //   //       context: context,
    //   //       builder: (context) {
    //   //         return AlertDialog(
    //   //           title: Text("Verification Code"),
    //   //           content: Text('Code entered is $verificationCode'),
    //   //         );
    //   //       });
    //   // }, // end onSubmit
    // );

    return OTPTextField(
      controller: _controller,
      length: 4,
      width: MediaQuery.of(context).size.width,
      fieldWidth: 44.h,
      style: const TextStyle(fontSize: 17),
      textFieldAlignment: MainAxisAlignment.spaceAround,
      fieldStyle: FieldStyle.box,
      onCompleted: (pincode) {
        print("Completed: $pincode");
        if (pincode == otpCode) {}
      },
    );
  }
}

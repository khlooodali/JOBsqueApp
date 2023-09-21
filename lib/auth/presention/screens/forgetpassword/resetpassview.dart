import 'package:findjop/auth/presention/widgets/title.dart';
import 'package:findjop/core/customwidgets/customappbar/view.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customtextfield/view.dart';
import '../../widgets/goback.dart';

class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({super.key});
  final TextEditingController _emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(tap: () {}, isback: true, islogo: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.w),
                    child: const CreateAccountTitle(
                        title: 'Reset Password',
                        subtitle:
                            'Enter the email address you used when you joined and we’ll send you instructions to reset your password.',
                        space: 8)),
                CustomTextField(
                  isBold: false,
                  ispassword: false,
                  hint: 'Email',
                  iconname: 'sms',
                  controller: _emailController,
                  type: TextInputType.emailAddress,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Email';
                    }
                    final emailRegex =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please Enter Valid Email';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 200.h,
                ),
                const GoBackView(
                  islogin: false,
                  isresetpassword: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CusttomButton(
                      width: MediaQuery.sizeOf(context).width,
                      ontapped: () {},
                      text: 'Request password reset',
                      isActive: true),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:findjop/auth/presention/widgets/title.dart';
import 'package:findjop/core/customwidgets/customappbar/view.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customtextfield/view.dart';

class ConfirmPasswordView extends StatelessWidget {
  ConfirmPasswordView({super.key});
  final TextEditingController _passswordController = TextEditingController();
  final TextEditingController _confirmpassswordController =
      TextEditingController();

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
                        title: 'Create new password',
                        subtitle:
                            'Set your new password so you can login and acces Jobsque',
                        space: 8)),
                CustomTextField(
                  isEmpty: true,
                  isvalid: false,
                  ispassword: true,
                  hint: 'New Password',
                  iconname: 'lock',
                  controller: _passswordController,
                  type: TextInputType.visiblePassword,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Password';
                    }
                    final passwordRegex =
                        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                    if (!passwordRegex.hasMatch(value)) {
                      return 'Password must be at least 8 characters, including at least one letter and one number';
                    }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  isEmpty: true,
                  isvalid: false,
                  ispassword: true,
                  hint: 'Confirm Password',
                  iconname: 'lock',
                  controller: _confirmpassswordController,
                  type: TextInputType.visiblePassword,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Confirm Password';
                    }
                    final passwordRegex =
                        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                    if (!passwordRegex.hasMatch(value)) {
                      return 'Password must be at least 8 characters, including at least one letter and one number';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 200.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CusttomButton(
                      width: MediaQuery.sizeOf(context).width,
                      ontapped: () {},
                      text: 'Reset password',
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

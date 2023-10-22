import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/core/customwidgets/customappbar/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/socialpart.dart';
import '../../widgets/title.dart';
import 'widget/form.dart';

class CreateAccountView extends StatelessWidget {
  CreateAccountView({super.key});
  final TextEditingController namecontrroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: getAppBar(
              isback: true,
              islogo: true,
              tap: () {
                nextTo(context, const LoginView(), isreplace: true);
              }),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              children: [
                const CreateAccountTitle(
                    space: 8,
                    title: 'Cereate Account',
                    subtitle:
                        'Please create an account to find your dream job'),
                SizedBox(
                  height: 44.h,
                ),
                const SignupForm(),
                const SignUpWithSocialView(
                  operationName: 'Sign Up',
                )
              ],
            ),
          )),
    );
  }
}

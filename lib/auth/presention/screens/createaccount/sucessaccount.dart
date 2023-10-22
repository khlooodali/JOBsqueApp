import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigationwithanimate.dart';
import 'package:findjop/core/customwidgets/helpermethod/showdialog.dart';
import 'package:flutter/material.dart';

import '../../../../core/customwidgets/successoperation/view.dart';

class SucessCreateAccount extends StatelessWidget {
  const SucessCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
      ontap: () {
        nextTo(context, const LoginView());
      },
      isbuttn: true,
      bttnText: 'Get Started',
      iconName: 'Success Account',
      title: 'Your account has been set up!',
      subTitle: 'We have customized feeds according to your preferences',
    );
  }
}

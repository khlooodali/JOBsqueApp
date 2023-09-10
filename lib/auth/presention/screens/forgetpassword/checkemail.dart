import 'package:flutter/material.dart';

import '../../widgets/successoperation/view.dart';

class CheckEmailView extends StatelessWidget {
  const CheckEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
      bttnText: 'Open email app',
      iconName: 'Email Ilustration',
      ontap: () {},
      title: 'Check your Email',
      subTitle: 'We have sent a reset password to your email address',
    );
  }
}

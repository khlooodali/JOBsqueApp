import 'package:flutter/material.dart';

import '../../widgets/successoperation/view.dart';

class SucessCreateAccount extends StatelessWidget {
  const SucessCreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
      bttnText: 'Get Started',
      iconName: 'Success Account',
      ontap: () {},
      title: 'Your account has been set up!',
      subTitle: 'We have customized feeds according to your preferences',
    );
  }
}

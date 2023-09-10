import 'package:flutter/material.dart';

import '../../widgets/successoperation/view.dart';

class PasswordChangedSuccesfully extends StatelessWidget {
  const PasswordChangedSuccesfully({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
      bttnText: 'Open email app',
      iconName: 'Password Succesfully',
      ontap: () {},
      title: 'Password changed succesfully!',
      subTitle:
          'Your password has been changed successfully, we will let you know if there are more problems with your account',
    );
  }
}

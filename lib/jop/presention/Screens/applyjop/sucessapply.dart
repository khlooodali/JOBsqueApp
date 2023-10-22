import 'package:flutter/material.dart';

import '../../../../core/customwidgets/successoperation/view.dart';

class SucessApplyView extends StatelessWidget {
  const SucessApplyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
      bttnText: 'Back to home',
      iconName: 'Data Ilustration',
      ontap: () {},
      title: 'Your data has been successfully sent',
      subTitle:
          'You will get a message from our team, about the announcement of employee acceptance',
    );
  }
}

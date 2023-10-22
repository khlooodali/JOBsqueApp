import 'package:findjop/core/customwidgets/successoperation/view.dart';

import 'package:flutter/material.dart';

class NoMessages extends StatelessWidget {
  const NoMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return SuccessOperationView(
        isbuttn: false,
        iconName: 'Data Ilustration',
        ontap: () {},
        bttnText: '',
        subTitle:
            'Once your application has reached the interview stage, you will get a message from the recruiter.',
        title: 'You have not received any messages');
  }
}

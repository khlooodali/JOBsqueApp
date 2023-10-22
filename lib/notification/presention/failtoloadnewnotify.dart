import 'package:flutter/material.dart';

import '../../../../core/customwidgets/successoperation/view.dart';
import '../../jop/presention/widgets/appbarwithouticon.dart';

class FailToLoadNewNotification extends StatelessWidget {
  const FailToLoadNewNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context, ontap: () {}, title: 'Notification'),
      body: SuccessOperationView(
          bttnText: '',
          iconName: 'Notification Ilustration',
          ontap: () {},
          subTitle:
              'You will receive a notification if there is something on your account',
          title: 'No new notifications yet',
          isbuttn: false),
    );
  }
}

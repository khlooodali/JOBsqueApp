import 'package:flutter/material.dart';

import '../../../../core/customwidgets/successoperation/view.dart';
import '../../widgets/appbarwithouticon.dart';

class FailToSave extends StatelessWidget {
  const FailToSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(context: context, ontap: () {}, title: 'Saved'),
      body: SuccessOperationView(
          bttnText: '',
          iconName: 'Saved Ilustration',
          ontap: () {},
          subTitle: 'Press the star icon on the job you want to save.',
          title: 'Nothing has been saved yet',
          isbuttn: false),
    );
  }
}

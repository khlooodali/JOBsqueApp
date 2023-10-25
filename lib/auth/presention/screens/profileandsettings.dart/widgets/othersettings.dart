import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';

import '../helpcenter.dart';
import '../privcypolicy.dart';
import '../termsandcondtion.dart';
import 'settingsitem.dart';

class OtherSettings extends StatelessWidget {
  const OtherSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingItem(
          ontap: () {},
          isIcon: false,
          settingName: 'Accesibility',
        ),
        SettingItem(
            ontap: () {
              nextTo(context, HelpCenter(),isreplace: true);
            },
            isIcon: false,
            settingName: 'Help Center',
            iconName: 'folder-favorite'),
        SettingItem(
            ontap: () {
              nextTo(context, TermsAndCondtions(),isreplace: true);
            },
            isIcon: false,
            settingName: 'Terms & Conditions',
            iconName: 'notificationb'),
        SettingItem(
          ontap: () {
            nextTo(context, PrivcyAndPolicy(),isreplace: true);
          },
          isIcon: false,
          settingName: 'Privacy Policy',
        ),
      ],
    );
  }
}

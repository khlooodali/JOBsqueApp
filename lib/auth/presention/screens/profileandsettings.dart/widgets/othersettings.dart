import 'package:flutter/material.dart';

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
            ontap: () {},
            isIcon: false,
            settingName: 'Help Center',
            iconName: 'folder-favorite'),
        SettingItem(
            ontap: () {},
            isIcon: false,
            settingName: 'Terms & Conditions',
            iconName: 'notificationb'),
        SettingItem(
          ontap: () {},
          isIcon: false,
          settingName: 'Privacy Policy',
        ),
      ],
    );
  }
}

import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';

import '../editprofile.dart';
import '../loginandsequrity.dart';
import '../notificationsettings.dart';
import '../portfilio.dart';
import '../selectlanguage.dart';
import 'settingsitem.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingItem(
            ontap: () {
              nextTo(context, const EditProfile(), isreplace: true);
            },
            isIcon: true,
            settingName: 'Edit Profile',
            iconName: 'profilefill'),
        SettingItem(
            ontap: () {
              nextTo(
                  context,
                  const PortfolioView(
                    Pathimage: '',
                  ));
            },
            isIcon: true,
            settingName: 'Portfolio',
            iconName: 'folder-favorite'),
        SettingItem(
            ontap: () {
              nextTo(context, const SelectLanguageView());
            },
            isIcon: true,
            settingName: 'Langauge',
            iconName: 'global'),
        SettingItem(
            ontap: () {
              nextTo(context, const NotificationSettings());
            },
            isIcon: true,
            settingName: 'Notification',
            iconName: 'notificationb'),
        SettingItem(
            ontap: () {
              nextTo(context, const LoginAndSecurity());
            },
            isIcon: true,
            settingName: 'Login and security',
            iconName: 'lockb'),
      ],
    );
  }
}

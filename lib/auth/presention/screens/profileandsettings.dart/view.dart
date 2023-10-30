import 'package:findjop/auth/presention/screens/profileandsettings.dart/widgets/logoutappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/optiontitle.dart';
import 'widgets/generalsettings.dart';
import 'widgets/othersettings.dart';
import 'widgets/personalinfo.dart';

class ProfileAndSettingsView extends StatelessWidget {
  const ProfileAndSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            logoutAppBar(),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PersonalInfo(),
                  Padding(
                    padding: EdgeInsets.only(top: 36.h, bottom: 16.h),
                    child: const OptionTitle(
                        title: 'General',
                        isReadMore: false,
                        isCenterTitle: false,
                        height: 36),
                  ),
                  const GeneralSettings(),
                  Padding(
                    padding: EdgeInsets.only(top: 32.h, bottom: 16.h),
                    child: const OptionTitle(
                        title: 'Other',
                        isReadMore: false,
                        isCenterTitle: false,
                        height: 36),
                  ),
                  const OtherSettings(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

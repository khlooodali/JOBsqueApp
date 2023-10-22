import 'package:findjop/jop/presention/Screens/displayalljops/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/customwidgets/helpermethod/navigationwithanimate.dart';
import '../../jop/presention/Screens/resentjops.dart';
import '../../jop/presention/Screens/suggestedjops.dart';

import '../widgets/customsearch/view.dart';

import '../widgets/viewall.dart';
import '../widgets/welcomeuser.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        SizedBox(
          height: 16.h,
        ),
        const WelcomView(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 22.h),
          child: const CustomSearchInput(),
        ),
        ViewAllWidget(
          title: 'Suggested Job',
          ontap: () {},
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          // child: const SuggestedJops(),
        ),
        ViewAllWidget(
          title: 'Resent Job',
          ontap: () {
            Navigator.of(context).push(createRoute(AllJops()));
          },
        ),
        const ResentJops()
      ],
    );
  }
}

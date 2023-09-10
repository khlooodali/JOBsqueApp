import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../jop/presention/Screens/resentjops.dart';
import '../../jop/presention/Screens/suggestedjops.dart';

import '../widgets/customsearch/view.dart';

import '../widgets/viewall.dart';
import '../widgets/welcomeuser.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      children: [
        SizedBox(
          height: 16.h,
        ),
        WelcomView(),
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
          child: const SuggestedJops(),
        ),
        ViewAllWidget(
          title: 'Resent Job',
          ontap: () {},
        ),
        const ResentJops()
      ],
    );
  }
}

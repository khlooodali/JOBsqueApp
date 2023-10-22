import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'widgets/helpitem.dart';
import 'widgets/searchinput.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context, ontap: () {}, title: 'Help Center'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 36.h, bottom: 28.h),
              child: const SearchInputForHelp(),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const HelpCenterItem();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16.h,
                    );
                  },
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}

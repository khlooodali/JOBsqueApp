import 'package:findjop/core/customwidgets/optiontitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../jop/presention/widgets/appbarwithouticon.dart';
import 'notificationitem.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context, ontap: () {}, title: 'Notification'),
      body: Column(
        children: [
          const OptionTitle(
            height: 36,
            isCenterTitle: false,
            isReadMore: false,
            title: 'New',
            //textalign: TextAlign.start,
          ),
          SizedBox(
            height: 21.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => const NewNotificationItemVie(),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          const OptionTitle(
            height: 36,
            isCenterTitle: false,
            isReadMore: false,
            title: 'Yesterday',
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 3,
          //     itemBuilder: (context, index) => const OldNotificationItem(),
          //   ),
          // ),
        ],
      ),
    );
  }
}

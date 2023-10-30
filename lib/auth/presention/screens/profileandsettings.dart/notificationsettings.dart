import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/optiontitle.dart';
import '../../../../core/theme/appcolors.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Notification'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 32.h,
            ),
            const OptionTitle(
                title: 'Job notification',
                isReadMore: false,
                isCenterTitle: false,
                height: 37),
            SizedBox(
              height: 12.h,
            ),
            NotificationItem(
              switchval: true,
              title: 'Your Job Search Alert',
            ),
            NotificationItem(
              switchval: true,
              title: 'Job Application Update',
            ),
            NotificationItem(
              switchval: false,
              title: 'Job Application Reminders',
            ),
            NotificationItem(
              switchval: true,
              title: 'Jobs You May Be Interested In',
            ),
            const OptionTitle(
                title: 'other notification',
                isReadMore: false,
                isCenterTitle: false,
                height: 37),
            SizedBox(
              height: 32.h,
            ),
            NotificationItem(
              switchval: true,
              title: 'Show Profile',
            ),
            NotificationItem(
              switchval: true,
              title: 'All Message',
            ),
            NotificationItem(
              switchval: true,
              title: 'Message Nudges',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationItem extends StatefulWidget {
  NotificationItem({
    super.key,
    required this.switchval,
    required this.title,
  });
  bool switchval;
  final String title;

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              CupertinoSwitch(
                applyTheme: true,
                thumbColor: widget.switchval == true
                    ? AppColor.primaryColor100
                    : AppColor.naturalColor100,
                trackColor: widget.switchval == true
                    ? AppColor.primaryColor500
                    : AppColor.naturalColor300,
                value: widget.switchval,
                onChanged: (value) {
                  widget.switchval = value;
                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 1,
            color: AppColor.naturalColor200,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

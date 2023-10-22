import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/moreoptionsitem.dart';

class MoreForChatItemView extends StatelessWidget {
  const MoreForChatItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoreOptionsItem(
            icon: 'bag',
            ontap: () {},
            optionName: 'Visit job post',
          ),
          MoreOptionsItem(
            icon: 'note',
            ontap: () {},
            optionName: 'View my application',
          ),
          MoreOptionsItem(
            icon: 'sms',
            ontap: () {},
            optionName: 'Mark as unread',
          ),
          MoreOptionsItem(
            icon: 'notification',
            ontap: () {},
            optionName: 'Mute',
          ),
          MoreOptionsItem(
            icon: 'import',
            ontap: () {},
            optionName: 'Archive',
          ),
          MoreOptionsItem(
            icon: 'notification',
            ontap: () {},
            optionName: 'Mute',
          ),
          MoreOptionsItem(
            icon: 'trash',
            ontap: () {},
            optionName: 'Delete conversation',
          ),
        ],
      ),
    );
  }
}

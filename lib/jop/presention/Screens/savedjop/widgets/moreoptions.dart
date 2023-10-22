import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/customwidgets/moreoptionsitem.dart';

class MoreForSavedItemView extends StatelessWidget {
  const MoreForSavedItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MoreOptionsItem(
            icon: 'aply',
            ontap: () {},
            optionName: 'Apply Job',
          ),
          MoreOptionsItem(
            icon: 'share',
            ontap: () {},
            optionName: 'Share via...',
          ),
          MoreOptionsItem(
            icon: 'save',
            ontap: () {},
            optionName: 'Cancel save',
          )
        ],
      ),
    );
  }
}

import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/messages/widgets/nomessages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../fillteredmessages.dart';

class MessagesFillterOptions extends StatelessWidget {
  const MessagesFillterOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Message filters', style: Theme.of(context).textTheme.bodySmall),
          SizedBox(height: 16.h),
          FilterMessageItem(
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FillterdMessagesView()),
              );
            },
            optionName: 'Unread',
          ),
          FilterMessageItem(
            ontap: () {
              nextTo(context, const NoMessages());
            },
            optionName: 'Spam',
          ),
          FilterMessageItem(
            ontap: () {
              nextTo(context, const NoMessages());
            },
            optionName: 'Archived',
          )
        ],
      ),
    );
  }
}

class FilterMessageItem extends StatelessWidget {
  const FilterMessageItem(
      {super.key, required this.optionName, required this.ontap});

  final String optionName;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 49.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: AppColor.naturalColor300),
              borderRadius: BorderRadius.circular(100.r)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  optionName,
                  style: TextStyle(
                      fontSize: 16.sp, color: AppColor.naturalColor900),
                ),
                IconButton(
                    onPressed: ontap,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 15.sp,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        )
      ],
    );
  }
}

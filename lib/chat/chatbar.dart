import 'package:findjop/chat/moreforchat.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/messages/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/theme/appcolors.dart';

AppBar ChatAppBar(BuildContext context, String image, String name) {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/$image.svg'),
          SizedBox(
            width: 12.w,
          ),
          Text(
            name,
            style:
                const TextStyle(fontSize: 16, color: AppColor.naturalColor900),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 24.w, top: 19.h),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 471.h,
                      child: const MoreForChatItemView(),
                    );
                  });
            },
            child: SvgPicture.asset(
              'assets/icons/more.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        )
      ],
      leading: GestureDetector(
          onTap: () {
            nextTo(context, MessagesView(), isreplace: true);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, top: 19.h),
            child: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
          )));
}

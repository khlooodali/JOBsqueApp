import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../core/theme/appcolors.dart';

class ChatServices extends StatelessWidget {
  const ChatServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Container(
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: AppColor.naturalColor300)),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/paperclip-2.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: SizedBox(
              width: 227.w,
              height: 42.h,
              child: TextFormField(
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColor.naturalColor900,
                    fontSize: 14,
                    textBaseline: TextBaseline.alphabetic),
                decoration: InputDecoration(
                    hintText: 'Write a message...',
                    hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                    filled: true,
                    fillColor: const Color(0xffFAFAFA),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                            width: 1, color: AppColor.naturalColor200))),
              ),
            ),
          ),
          Container(
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: AppColor.naturalColor300)),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/microphone-2.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

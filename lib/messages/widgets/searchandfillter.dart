import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'messagefillter.dart';

class SearchAndFillter extends StatelessWidget {
  const SearchAndFillter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 267.w,
          height: 48.h,
          child: TextFormField(
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColor.naturalColor900,
                fontSize: 14,
                textBaseline: TextBaseline.alphabetic),
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    fit: BoxFit.scaleDown,
                  ),
                ),
                hintText: 'Search messages....',
                hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(
                        width: 1, color: AppColor.naturalColor200))),
          ),
        ),
        SizedBox(
          width: 12.w,
        ),
        GestureDetector(
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
                    height: 309.h,
                    child: const MessagesFillterOptions(),
                  );
                });
          },
          child: Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: AppColor.naturalColor300)),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/fillter.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

class DottedBoarderView extends StatelessWidget {
  const DottedBoarderView({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: AppColor.primaryColor400,
      radius: const Radius.circular(8),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
          width: 327.w,
          height: 230.h,
          color: const Color(0xffECF2FF),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: const BoxDecoration(
                    color: AppColor.primaryColor100,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/document-upload.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Upload your other file',
                  style: TextStyle(
                      fontSize: 16.sp, color: AppColor.naturalColor900),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Max. file size 10 MB',
                  style: TextStyle(
                      fontSize: 12.sp, color: AppColor.naturalColor500),
                ),
                SizedBox(
                  height: 16.h,
                ),
                InkWell(
                  onTap: ontap,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColor.primaryColor500),
                        borderRadius: BorderRadius.circular(100),
                        color: AppColor.primaryColor100),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/export.svg',
                            fit: BoxFit.scaleDown,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Add File',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColor.primaryColor500),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

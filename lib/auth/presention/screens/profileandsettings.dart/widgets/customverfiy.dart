import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomVerfiy extends StatefulWidget {
  const CustomVerfiy({super.key});

  @override
  State<CustomVerfiy> createState() => _CustomVerfiyState();
}

class _CustomVerfiyState extends State<CustomVerfiy> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 66.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1, color: AppColor.naturalColor300)),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Secure your account with \ntwo-step verification',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              CupertinoSwitch(
                applyTheme: true,
                thumbColor: val == true
                    ? AppColor.primaryColor100
                    : AppColor.naturalColor100,
                trackColor: val == true
                    ? AppColor.primaryColor500
                    : AppColor.naturalColor300,
                value: val,
                onChanged: (value) {
                  val = value;
                  setState(() {});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

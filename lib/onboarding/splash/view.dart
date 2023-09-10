import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constant/strings.dart';
import '../on_bording/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void nextScreen() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardingView()),
      );
    });
  }

  @override
  void initState() {
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: 701.w,
              height: 700.h,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor100.withOpacity(.14),
                  shape: BoxShape.circle),
              child: Center(
                child: Container(
                  width: 344.w,
                  height: 343.h,
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor100.withOpacity(.14),
                      shape: BoxShape.circle),
                  child: Center(
                    child: Container(
                      width: 190.w,
                      height: 189.h,
                      decoration: BoxDecoration(
                          color: AppColor.primaryColor100.withOpacity(.3),
                          shape: BoxShape.circle),
                      child: Center(
                        child: SvgPicture.asset(
                          logopath,
                          width: 141.w,
                          height: 33.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )));
  }
}

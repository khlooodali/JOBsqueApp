import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getLightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.primaryColor500)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: AppColor.naturalColor300)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(width: 1, color: AppColor.dangerColor500)),
        hintStyle: TextStyle(
          // fontFamily: 'SFPRODISPLAY',
          fontSize: 14,
          color: AppColor.naturalColor400,
          //fontWeight: FontWeight.w400
        ),
        errorStyle: TextStyle(
            //fontFamily: 'SFPRODISPLAY',
            fontSize: 16,
            color: AppColor.dangerColor500,
            fontWeight: FontWeight.w400),
      ),
      textTheme: TextTheme(
          //onboarding title blue
          titleMedium: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor500),
          titleLarge: TextStyle(
              // fontFamily: 'SFPRODISPLAY',
              fontSize: 32.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.naturalColor50),
          titleSmall: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor500),
          labelLarge: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff363F5E)),
          labelSmall: TextStyle(
              // fontFamily: 'SFPRODISPLAY',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.primaryColor500),
          headlineLarge: TextStyle(
              // fontFamily: 'SFPRODISPLAY',
              fontSize: 28.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.naturalColor900),
          headlineMedium: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 24.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.naturalColor900),
          displayLarge: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor900),
          headlineSmall: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor900),
          bodySmall: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor900),
          labelMedium: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor400),
          bodyLarge: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.naturalColor700),
          bodyMedium: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white),
          displaySmall: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColor.naturalColor500),
          displayMedium: TextStyle(
              //fontFamily: 'SFPRODISPLAY',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white)));
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../theme/appcolors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hint,
      required this.iconname,
      this.siconname,
      required this.controller,
      this.tappedicon,
      required this.type,
      required this.validation,
      required this.ispassword,
      this.errorText,
      this.onchange,
      required this.isvalid,
      required this.isEmpty});
  final String hint;
  final String iconname;
  final String? siconname;
  final String? errorText;
  bool isvalid = false;
  bool isEmpty = true;

  final TextEditingController controller;
  final bool ispassword;
  final VoidCallback? tappedicon;
  final String? Function(String?)? validation;
  final String? Function(String?)? onchange;

  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      width: 327.w,
      child: TextFormField(
        controller: controller,
        validator: validation,
        onChanged: onchange,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColor.naturalColor900,
            fontSize: 14,
            textBaseline: TextBaseline.alphabetic),
        keyboardType: type,
        obscureText: ispassword,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: tappedicon,
              icon: SvgPicture.asset(
                'assets/icons/$siconname.svg',
                fit: BoxFit.scaleDown,
              )),
          prefixIcon: SvgPicture.asset(
            'assets/icons/$iconname.svg',
            fit: BoxFit.scaleDown,
          ),
          errorBorder: isEmpty
              ? Theme.of(context).inputDecorationTheme.enabledBorder
              : isvalid
                  ? Theme.of(context).inputDecorationTheme.enabledBorder
                  : Theme.of(context).inputDecorationTheme.errorBorder,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          hintText: hint,
          errorText: errorText,
          errorMaxLines: 2,
          labelStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          errorStyle: isEmpty
              ? Theme.of(context).inputDecorationTheme.hintStyle
              : isvalid
                  ? const TextStyle(
                      fontFamily: 'SFPRODISPLAY',
                      fontSize: 16,
                      color: Color(0xff60C631), //success500
                      fontWeight: FontWeight.w400)
                  : Theme.of(context).inputDecorationTheme.errorStyle,
        ),
      ),
    );
  }
}

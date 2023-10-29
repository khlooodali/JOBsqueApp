import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/appcolors.dart';

class SpecialTextFiled extends StatelessWidget {
  const SpecialTextFiled({
    super.key,
    required this.text,
    required this.iconName,
    required this.controller,
    this.validation,
    this.onchange,
    required this.isStar,
    required this.hint,
    required this.isred,
    required this.isdark,
  });
  final String text;
  final bool isred;
  final bool isdark;
  final bool isStar;
  final String hint;
  final String iconName;
  final TextEditingController controller;
  final String? Function(String?)? validation;
  final String? Function(String?)? onchange;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isStar
            ? titleFiled(
                title: text,
                isredStar: isred,
                isdarktitle: isdark,
              )
            : Text(
                text,
                style: Theme.of(context).inputDecorationTheme.hintStyle,
              ),
        isStar
            ? SizedBox(
                height: 8.h,
              )
            : SizedBox(
                height: 6.h,
              ),
        SizedBox(
          height: 55.h,
          child: TextFormField(
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColor.naturalColor900,
                fontSize: 14,
                textBaseline: TextBaseline.alphabetic),
            controller: controller,
            validator: validation,
            onChanged: onchange,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: Theme.of(context).textTheme.headlineSmall,
                prefixIcon: isStar
                    ? SvgPicture.asset(
                        'assets/icons/$iconName.svg',
                        fit: BoxFit.scaleDown,
                      )
                    : const SizedBox(),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide:
                        BorderSide(color: AppColor.naturalColor300, width: 1))),
          ),
        ),
        isStar
            ? SizedBox(
                height: 20.h,
              )
            : SizedBox(
                height: 16.h,
              ),
      ],
    );
  }
}

class titleFiled extends StatelessWidget {
  const titleFiled({
    super.key,
    required this.title,
    required this.isdarktitle,
    required this.isredStar,
  });

  final String title;
  final bool isredStar;
  final bool isdarktitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: isdarktitle
                  ? AppColor.naturalColor900
                  : AppColor.naturalColor400),
        ),
        Icon(
          Icons.star,
          size: 10,
          color: isredStar ? AppColor.dangerColor500 : AppColor.naturalColor400,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../jop/presention/widgets/specialtextfiled.dart';
import '../theme/appcolors.dart';
import 'countrypicker.dart';

class CountryFiled extends StatelessWidget {
  const CountryFiled(
      {super.key,
      required this.isStar,
      required this.controller,
      required this.text,
      required this.hint});
  final TextEditingController controller;
  final bool isStar;
  final String text;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isStar
            ? titleFiled(title: text)
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
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.naturalColor300, width: 1)),
          child: Row(
            children: [
              const GetCountryPicker(),
              Container(
                width: 2,
                height: 24,
                color: AppColor.naturalColor200,
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: TextFormField(
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColor.naturalColor900,
                      fontSize: 14,
                      textBaseline: TextBaseline.alphabetic),
                  controller: controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: Theme.of(context).textTheme.displayLarge,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white,
                      ))),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

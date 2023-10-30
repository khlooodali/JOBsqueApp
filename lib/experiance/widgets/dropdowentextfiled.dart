import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/widgets/specialtextfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdowenTextFiled extends StatefulWidget {
  const DropdowenTextFiled({super.key});

  @override
  State<DropdowenTextFiled> createState() => _DropdowenTextFiledState();
}

class _DropdowenTextFiledState extends State<DropdowenTextFiled> {
  String? val;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const titleFiled(
            isdarktitle: false, isredStar: false, title: 'Type of Work'),
        SizedBox(
          height: 6.h,
        ),
        DropdownButtonFormField(
            hint: const Text('Full Time'),
            style: TextStyle(fontSize: 16.sp, color: AppColor.naturalColor600),
            items: const [
              DropdownMenuItem(
                value: 'full Time',
                child: Text('Full Time'),
              ),
              DropdownMenuItem(
                value: 'part Time',
                child: Text('part Time'),
              ),
            ],
            onChanged: (value) {
              print(value);
              val = value;
              setState(() {});
              print('val is $val');
            }),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}

import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/Screens/jopdetailes/widgets/employeeitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PeopleDetailes extends StatelessWidget {
  const PeopleDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '6 Employees For',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'UI/UX Design',
                  style: TextStyle(
                      fontSize: 10.sp, color: AppColor.naturalColor500),
                ),
              ],
            ),
            Container(
              width: 137.w,
              height: 38.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border:
                      Border.all(width: 1, color: AppColor.naturalColor300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('UI/UX Designer',
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColor.naturalColor900)),
                  SizedBox(
                    width: 8.w,
                  ),
                  SvgPicture.asset('assets/icons/arrow-down.svg')
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        SizedBox(
          height: 200,
          child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                    height: 16.h,
                  ),
              itemCount: 3,
              itemBuilder: (context, index) => const EmployeeItem()),
        ),
      ],
    );
  }
}

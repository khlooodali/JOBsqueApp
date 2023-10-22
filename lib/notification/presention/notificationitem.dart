import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewNotificationItemVie extends StatelessWidget {
  const NewNotificationItemVie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Container(
              clipBehavior: Clip.antiAlias,
              width: 40.w,
              height: 40.h,
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle
                  //borderRadius: BorderRadius.circular(8.r)
                  ),
              child: SvgPicture.asset(
                'assets/icons/zoom.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
            title: Text(
              'zoom',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            subtitle: Text(
              'Zoom • United States',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const BoxDecoration(
                      color: Color(0xffDBB40E), shape: BoxShape.circle),
                ),
                Text(
                  '10:00 AM',
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            )),
        SizedBox(
          height: 12.h,
        ),
        const Divider(
          thickness: 1,
          color: AppColor.naturalColor200,
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}

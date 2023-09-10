import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class EmployeeItem extends StatelessWidget {
  const EmployeeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            clipBehavior: Clip.antiAlias,
            width: 36.h,
            height: 36.h,
            decoration: const BoxDecoration(
                color: AppColor.naturalColor100, shape: BoxShape.circle),
            child: Image.network(
                'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          ),
          title: Text(
            'Dimas Adi Saputro',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          subtitle: Text(
            'Senior UI/UX Designer at Twitter',
            style: TextStyle(fontSize: 10.sp, color: AppColor.naturalColor500),
          ),
          trailing: Column(
            children: [
              const Text(
                'Work during',
                style: TextStyle(fontSize: 12, color: AppColor.naturalColor500),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '5 Years',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        const Divider(
          thickness: 1,
          color: AppColor.naturalColor200,
        )
      ],
    );
  }
}

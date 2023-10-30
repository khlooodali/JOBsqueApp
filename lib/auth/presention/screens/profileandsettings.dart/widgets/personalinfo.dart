import 'package:findjop/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';
import 'information.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const Center(
            child: CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage('assets/images/Profile.png'),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            userName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Senior UI/UX Designer',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const InformationView(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About',
                style:
                    TextStyle(fontSize: 16.sp, color: AppColor.naturalColor500),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 14, color: AppColor.primaryColor500),
                  )),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}

import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyDetailes extends StatelessWidget {
  const CompanyDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 8.h,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContactItem(
              isEmail: true,
              text: 'twitter@mail.com',
            ),
            ContactItem(
              isEmail: false,
              text: 'https://twitter.com',
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'About Company',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
          style: Theme.of(context).textTheme.bodyLarge,
          //maxLines: 10,
        ),
      ],
    );
  }
}

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.isEmail, required this.text});
  final bool isEmail;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 157.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: AppColor.naturalColor200)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isEmail ? 'Email' : 'Website',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

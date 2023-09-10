import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JopDescrebtion extends StatelessWidget {
  const JopDescrebtion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Job Description',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.',
          style: Theme.of(context).textTheme.bodyLarge,
          //maxLines: 10,
        ),
        SizedBox(
          height: 20.h,
        ),
        Text(
          'Skill Required',
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/jopcategoryitem.dart';

class DetailesJopItem extends StatelessWidget {
  const DetailesJopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //network image after
        Container(
            clipBehavior: Clip.antiAlias,
            height: 48.h,
            width: 48.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: SvgPicture.asset(
              'assets/icons/zoom.svg',
              fit: BoxFit.fill,
            )),
        Padding(
          padding: EdgeInsets.only(top: 12.h, bottom: 8.h),
          child: Text(
            'Senior UI Designer',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Text(
          'Twitter • Jakarta, Indonesia ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.h, bottom: 32.h),
          child: JopCategory(
            isSuggest: false,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class HelpCenterItem extends StatelessWidget {
  const HelpCenterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.naturalColor300, width: 1),
          borderRadius: BorderRadius.circular(8.r)),
      child: ExpansionTile(
          title: Text(
            'Lorem ipsum dolor sit amet',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
              child: Text(
                maxLines: 10,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            )
          ]),
    );
  }
}

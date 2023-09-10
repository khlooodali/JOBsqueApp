import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/appcolors.dart';

class JopItemTitle extends StatelessWidget {
  const JopItemTitle({super.key, required this.isSuggest});
  final bool isSuggest;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
            color: isSuggest ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(8.r)),
        child: Center(
          child: SvgPicture.asset(
              'assets/icons/zoom.svg'), //image.network  //width/height /image
        ),
      ),
      title: Text(
        'Product Designer',
        style: isSuggest
            ? Theme.of(context).textTheme.bodyMedium
            : Theme.of(context).textTheme.bodySmall,
      ),
      subtitle: Text(
        'Zoom • United States',
        style: isSuggest
            ? Theme.of(context).textTheme.labelMedium
            : Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: SvgPicture.asset(
        'assets/icons/save.svg',
        fit: BoxFit.scaleDown,
        color: isSuggest ? Colors.white : AppColor.primaryColor900,
      ),
    );
  }
}

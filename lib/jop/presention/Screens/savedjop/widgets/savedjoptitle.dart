import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'moreoptions.dart';

class SavedjopTitle extends StatelessWidget {
  const SavedjopTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.r)),
        child: Center(
          child: SvgPicture.asset(
              'assets/icons/zoom.svg'), //image.network  //width/height /image
        ),
      ),
      title: Text(
        'Product Designer',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      subtitle: Text(
        'Zoom • United States',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: IconButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                context: context,
                builder: (context) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 271.h,
                    child: const MoreForSavedItemView(),
                  );
                });
          },
          icon: Icon(
            Icons.more_horiz,
            size: 25.sp,
            color: AppColor.naturalColor900,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/appcolors.dart';

class WhereLocationView extends StatefulWidget {
  const WhereLocationView({
    super.key,
  });

  @override
  State<WhereLocationView> createState() => _WhereLocationViewState();
}

class _WhereLocationViewState extends State<WhereLocationView> {
  bool isRemote = true;
  bool isoffice = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            isoffice = true;
            isRemote = false;
            setState(() {});
          },
          child: Container(
            width: 347.w,
            height: 46.h,
            decoration: BoxDecoration(
                color: isoffice
                    ? AppColor.primaryColor900
                    : AppColor.naturalColor100,
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 10),
              child: Text(
                'Work From Office',
                style: isoffice
                    ? Theme.of(context).textTheme.displayMedium
                    : Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: GestureDetector(
            onTap: () {
              isRemote = true;
              isoffice = false;
              setState(() {});
            },
            child: Container(
              width: 160.w,
              height: 46.h,
              decoration: BoxDecoration(
                  color: isRemote
                      ? AppColor.primaryColor900
                      : AppColor.naturalColor100,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
              child: Center(
                child: Text(
                  'Remote Work',
                  style: isRemote
                      ? Theme.of(context).textTheme.displayMedium
                      : Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

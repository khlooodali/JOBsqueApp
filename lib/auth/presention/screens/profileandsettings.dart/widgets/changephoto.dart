import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangePhoto extends StatelessWidget {
  const ChangePhoto({
    super.key,
    required this.ontap,
    required this.imagepath,
  });
  final VoidCallback ontap;
  final String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 90.w,
              height: 90.h,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Stack(
                children: [
                  (imagepath != null)
                      ? Image.file(
                          File(imagepath!),
                          fit: BoxFit.scaleDown,
                        )
                      : Image.asset(
                          "assets/images/Profile.png",
                          fit: BoxFit.scaleDown,
                        ),
                  const Center(
                    child: Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          TextButton(
              onPressed: ontap,
              child: Text(
                'Change  Photo',
                style: Theme.of(context).textTheme.labelSmall,
              ))
        ],
      ),
    );
  }
}

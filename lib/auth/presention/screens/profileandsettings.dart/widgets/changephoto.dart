import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChangePhoto extends StatelessWidget {
  const ChangePhoto({
    super.key,
    required this.ontap,
  });
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
            backgroundImage: const AssetImage('assets/images/Profile.png'),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/camera.svg',
                width: 32.w,
                height: 32.h,
                fit: BoxFit.scaleDown,
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

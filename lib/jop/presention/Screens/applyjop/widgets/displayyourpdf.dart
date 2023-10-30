import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

class DisplayPdf extends StatelessWidget {
  const DisplayPdf(
      {super.key,
      required this.filename,
      required this.filesize,
      required this.ontap});
  final String filename;
  final int filesize;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 74.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(width: 1, color: AppColor.naturalColor300)),
            child: ListTile(
                title: Text(filename,
                    style: TextStyle(
                        fontSize: 14.sp, color: AppColor.naturalColor900)),
                subtitle: Text(
                  'CV.pdf $filesize KB',
                  style: TextStyle(
                      fontSize: 12.sp, color: AppColor.naturalColor500),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/edit-2.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    InkWell(
                      onTap: ontap,
                      child: SvgPicture.asset('assets/icons/redclose.svg',
                          fit: BoxFit.scaleDown),
                    ),
                  ],
                ),
                leading: Image.asset('assets/images/Logopdf.png'))),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

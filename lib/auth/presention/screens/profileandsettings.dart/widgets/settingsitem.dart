import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.settingName,
      this.iconName,
      required this.isIcon,
      required this.ontap});
  final String settingName;
  final String? iconName;
  final bool isIcon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          isIcon
              ? ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.primaryColor100),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/$iconName.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  title: Text(
                    settingName,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  trailing: InkWell(
                    onTap: ontap,
                    child: SvgPicture.asset(
                      'assets/icons/arrowright.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      settingName,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    InkWell(
                      onTap: ontap,
                      child: SvgPicture.asset(
                        'assets/icons/arrowright.svg',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Divider(
              thickness: 1,
              color: AppColor.naturalColor200,
            ),
          )
        ],
      ),
    );
  }
}

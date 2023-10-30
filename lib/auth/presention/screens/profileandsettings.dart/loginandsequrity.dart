import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/customwidgets/optiontitle.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'changepassword.dart';
import 'emailaddress.dart';
import 'phonenumber.dart';
import 'towstepvervication.dart';
import 'view.dart';

class LoginAndSecurity extends StatelessWidget {
  const LoginAndSecurity({super.key});

  // String? email;
  @override
  Widget build(BuildContext context) {
    // if (email == null) {
    //   SharedPreferences.getInstance().then((value) {
    //     setState(() {
    //       email = value.getString(userEmail);
    //     });
    //   });
    // }

    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Login and security'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 32.h,
          ),
          const OptionTitle(
              title: 'Accont access',
              isReadMore: false,
              isCenterTitle: false,
              height: 37),
          SizedBox(
            height: 12.h,
          ),
          SecureItem(
            isDesplay: true,
            tap: () {
              nextTo(context, EmailAddressView());
            },
            title: 'Email address',
            display: userEmail,
          ),
          SecureItem(
            isDesplay: false,
            tap: () {
              nextTo(context, const PhoneNumberView());
            },
            title: 'Phone Number',
          ),
          SecureItem(
            isDesplay: false,
            tap: () {
              nextTo(context, const ChangePasswordView());
            },
            title: 'Change password',
          ),
          SecureItem(
            isDesplay: true,
            tap: () {
              nextTo(context, const TowStepVerficationView());
            },
            title: 'Two-step verification',
            display: 'non active',
          ),
          SecureItem(
            isDesplay: false,
            tap: () {
              //nextTo(context, const ());
            },
            title: 'Face ID',
          ),
        ],
      ),
    );
  }
}

class SecureItem extends StatelessWidget {
  const SecureItem({
    super.key,
    required this.title,
    required this.tap,
    this.display,
    required this.isDesplay,
  });
  final String title;
  final VoidCallback tap;
  final String? display;
  final bool isDesplay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Row(
                children: [
                  isDesplay
                      ? Text(
                          display!,
                          maxLines: 1,
                          style: const TextStyle(
                              overflow: TextOverflow.clip,
                              fontSize: 12,
                              color: AppColor.naturalColor400),
                          //style: Theme.of(context).textTheme.displaySmall,
                        )
                      : const SizedBox(),
                  SizedBox(
                    width: 12.w,
                  ),
                  InkWell(
                      onTap: tap,
                      child: SvgPicture.asset(
                        'assets/icons/arrowright.svg',
                        fit: BoxFit.scaleDown,
                      )),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 1,
            color: AppColor.naturalColor200,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'notificatonview.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({
    super.key,
  });

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  var parser = EmojiParser();
  //String? name;

  @override
  Widget build(BuildContext context) {
    // if (name == null) {
    //   SharedPreferences.getInstance().then((value) {
    //     setState(() {
    //       name = value.getString(userName);
    //     });
    //   });
    // }
    var welcomeEmoji = parser.emojify(':wave:');

    return ListTile(
      title: Row(children: [
        Text(
          userName,
          style: const TextStyle(fontSize: 20, color: AppColor.naturalColor900),
        ),
        Text(welcomeEmoji),
      ]),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: Text(
          'Create a better future for yourself here',
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      trailing: const NotificationItem(),
    );
  }
}

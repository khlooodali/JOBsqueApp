import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/constant/strings.dart';
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
    return Builder(builder: (context) {
      AuthCubit userCubit = BlocProvider.of(context);
      return ListTile(
        title: Row(
          children: [
        //   Text(
        //   //   (name==null)?'':name!,
        //   // style: Theme.of(context).textTheme.headlineMedium,
        //   //      ),
        //     //using profile data           //latalization errorrrrr
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Text('');
                }
                if (state is SuccessRequsetState) {
                  return Text(
                    userCubit.userProfile.data.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }
                return const Text(
                  '',
                );
              },
            ),
            Text(
              welcomeEmoji,
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ],
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Text(
            'Create a better future for yourself here',
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
        trailing: const NotificationItem(),
      );
    });
  }
}

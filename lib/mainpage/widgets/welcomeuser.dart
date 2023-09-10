import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'notificatonview.dart';

class WelcomView extends StatelessWidget {
  WelcomView({super.key});
  var parser = EmojiParser();

  @override
  Widget build(BuildContext context) {
    var welcomeEmoji = parser.emojify(':wave:');
    return ListTile(
      title: Row(
        children: [
          Text(
            'Hi, Rafif Dian',
            style: Theme.of(context).textTheme.headlineMedium,
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
  }
}

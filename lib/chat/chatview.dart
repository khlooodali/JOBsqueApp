import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'chatbar.dart';
import 'chatmessages.dart';
import 'chatservices.dart';
import 'date.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key, required this.image, required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(context, image, name),
      body: Padding(
        padding: EdgeInsets.only(top: 24.h),
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              color: AppColor.naturalColor200,
            ),
            const ChatDate(),
            Expanded(child: MessagesOfChat()),
            SizedBox(
              height: 33.h,
            ),
            const ChatServices(),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}

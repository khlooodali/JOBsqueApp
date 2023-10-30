import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/mainpage/view.dart';
import 'package:findjop/messages/widgets/messageitem.dart';
import 'package:findjop/messages/widgets/searchandfillter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../jop/presention/widgets/appbarwithouticon.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const MainPageView(), isreplace: true);
          },
          title: 'Messages'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            const SearchAndFillter(),
            SizedBox(
              height: 28.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: messageslist.length,
                    itemBuilder: (context, index) => messageslist[index])),
          ],
        ),
      ),
    );
  }
}

import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/messages/view.dart';
import 'package:findjop/messages/widgets/messageitem.dart';
import 'package:findjop/messages/widgets/searchandfillter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/customwidgets/optiontitle.dart';
import '../jop/presention/widgets/appbarwithouticon.dart';

class FillterdMessagesView extends StatelessWidget {
  const FillterdMessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const MessagesView(), isreplace: true);
          },
          title: 'Messages'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: const SearchAndFillter(),
          ),
          SizedBox(
            height: 24.h,
          ),
          OptionTitle(
            height: 36,
            isCenterTitle: false,
            isReadMore: true,
            title: 'Unread',
            textbtn: 'Read all messages',
            ontap: () {},
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => messageslist[index]),
          )),
        ],
      ),
    );
  }
}

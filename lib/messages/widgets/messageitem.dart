import 'package:findjop/chat/chatview.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/appcolors.dart';

List<MessageItem> messageslist = [
  const MessageItem(
    chatName: 'Shoope',
    date: '9 Am',
    image: 'Shoope Logo',
    msg: 'Thank You David!',
    msgnum: '2',
  ),
  const MessageItem(
    chatName: 'Zoom',
    date: '12 Pm',
    image: 'zoom',
    msg: 'Here is the link: http://zoom.com/abcdeefg',
    msgnum: '3',
  ),
  const MessageItem(
    chatName: 'Dana',
    date: 'Yesterday',
    image: 'Dana Logo',
    msg: 'Thank you for your attention!',
    msgnum: '1',
  )
];

class MessageItem extends StatelessWidget {
  const MessageItem(
      {super.key,
      required this.image,
      required this.chatName,
      required this.msg,
      required this.date,
      required this.msgnum});
  final String image;
  final String chatName;
  final String msg;
  final String date;
  final String msgnum;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        nextTo(
            context,
            ChatView(
              image: image,
              name: chatName,
            ));
      },
      child: Column(
        children: [
          ListTile(
              leading: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    width: 44.w,
                    height: 44.h,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/$image.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Positioned(
                    top: 2.h,
                    left: 4.w,
                    child: Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          color: AppColor.primaryColor500,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(msgnum,
                            style: TextStyle(
                                fontSize: 10.sp, color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                chatName,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              subtitle: Text(
                msg,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              trailing: Text(
                date,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor500),
              )),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: const Divider(
              thickness: 1,
              color: AppColor.naturalColor200,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}

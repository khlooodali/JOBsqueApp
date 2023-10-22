import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/theme/appcolors.dart';

class MessagesOfChat extends StatelessWidget {
  MessagesOfChat({super.key});

  List<Message> messages = [
    const Message(
        message:
            "Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage."),
    const Message(
        message: 'Can we have an interview via google meet call today at 3pm?'),
    const Message(
        message:
            "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! https://meet.google.com/dis-sxdu-ave"),
  ];
  List<Response> response = [
    const Response(
        message:
            "Hi Melan, thank you for considering me, this is good news for me."),
    const Response(message: "Of course, I can!"),
    const Response(message: "Thanks!"),
  ];

  //final TextEditingController _messageController = TextEditingController();
  //  void _sendMessage(String message) {
  //   setState(() {
  //     messages.add(message);
  //     _messageController.clear();
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        height: 16.h,
      ),
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            messages[index],
            response[index],
          ],
        );
      },
    );
  }
}

class Message extends StatelessWidget {
  const Message({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 24.w),
        child: Container(
          constraints: BoxConstraints(maxWidth: 272.w, maxHeight: 140.h),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: AppColor.naturalColor200),
          child: Text(
            message,
            style: TextStyle(fontSize: 12.sp, color: AppColor.naturalColor800),
          ),
        ),
      ),
    );
  }
}

class Response extends StatelessWidget {
  const Response({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: 24.w,
        ),
        child: Container(
          constraints: BoxConstraints(maxWidth: 237.w, maxHeight: 140.h),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: AppColor.primaryColor500),
          child: Text(
            message,
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

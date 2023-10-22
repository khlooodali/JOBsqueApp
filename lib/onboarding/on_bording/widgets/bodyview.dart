import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/onboarding/on_bording/widgets/customindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'custompageview/view.dart';

class OnBordingBodyView extends StatefulWidget {
  const OnBordingBodyView({super.key});

  @override
  State<OnBordingBodyView> createState() => _OnBordingBodyViewState();
}

class _OnBordingBodyViewState extends State<OnBordingBodyView> {
  PageController _controller = PageController();

  int count = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: count)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pagecontroller: _controller,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 25.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 81.w, height: 19.h, child: SvgPicture.asset(logopath)),
              TextButton(
                  onPressed: () {
                    nextTo(context, const LoginView(), iskeep: false);
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.titleSmall,
                  ))
            ],
          ),
        ),
        Positioned(
          bottom: 120.h,
          left: 0,
          right: 0,
          child: CustomIndicator(
              index: (_controller.hasClients ? _controller.page : 0)!.toInt()),
        ),
        Positioned(
            left: 24.w,
            right: 24.w,
            bottom: 56.h,
            child: CusttomButton(
              width: MediaQuery.sizeOf(context).width,
              isActive: true,
              ontapped: () {
                if (_controller.page == 2) {
                  nextTo(context, const LoginView(), iskeep: false);
                } else {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                }
              },
              text: _controller.hasClients
                  ? _controller.page == 2
                      ? "Get Started"
                      : "Next"
                  : "Next",
            ))
      ],
    );
  }
}

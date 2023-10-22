import 'package:findjop/auth/presention/screens/createaccount/prefered.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/title.dart';
import 'widget/customjop.dart';

class SelectTypeOfJopView extends StatelessWidget {
  SelectTypeOfJopView({super.key});
  List<JopItemView> alllist = [
    const JopItemView(
      imagepath: 'assets/icons/bezier.svg',
      title: 'UI/UX Designer',
    ),
    const JopItemView(
      imagepath: 'assets/icons/pen-tool-2.svg',
      title: 'Ilustrator Designer',
    ),
    const JopItemView(
      imagepath: 'assets/icons/code.svg',
      title: 'Developer',
    ),
    const JopItemView(
      imagepath: 'assets/icons/graph.svg',
      title: 'Management',
    ),
    const JopItemView(
      imagepath: 'assets/icons/monitor-mobbile.svg',
      title: 'Information Technology',
    ),
    const JopItemView(
      imagepath: 'assets/icons/cloud-add.svg',
      title: 'Research and Analytics',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CreateAccountTitle(
                  space: 12,
                  title: 'What type of work are you interested in?',
                  subtitle:
                      'Tell us what you’re interested in so we can customise the app for your needs.'),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.h),
                child: Container(
                  color: Colors.transparent,
                  height: 500,
                  child: GridView.builder(
                      itemCount: alllist.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return alllist[index];
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: CusttomButton(
                    width: MediaQuery.sizeOf(context).width,
                    ontapped: () {
                      nextTo(context, const PreferedLocatonView(),
                          isreplace: false);
                    },
                    text: 'Next',
                    isActive: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}

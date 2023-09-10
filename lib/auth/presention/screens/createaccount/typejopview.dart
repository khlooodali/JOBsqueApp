import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/title.dart';
import 'widget/customjop.dart';

class SelectTypeOfJopView extends StatelessWidget {
  const SelectTypeOfJopView({super.key});

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
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 20,
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return const JopItemView(
                          imagepath: 'assets/icons/bezier.svg',
                          isSelected: true,
                          title: 'UI/UX Designer',
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.h),
                child: CusttomButton(
                    width: MediaQuery.sizeOf(context).width,
                    ontapped: () {},
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/custombttn/view.dart';
import '../../widgets/title.dart';
import 'widget/locatonwhere.dart';
import 'widget/selectlocation.dart';

class PreferedLocatonView extends StatelessWidget {
  const PreferedLocatonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CreateAccountTitle(
              space: 12,
              subtitle:
                  'Let us know, where is the work location you want at this time, so we can adjust it.',
              title: 'Where are you prefefred Location?',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32),
              child: WhereLocationView(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                'Select the country you want for your job',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Wrap(
              spacing: 12, // gap between adjacent chips
              runSpacing: 16, // gap between lines
              children: <Widget>[...locationlist],
            ),
            Padding(
              padding: EdgeInsets.only(top: 65.h),
              child: CusttomButton(
                ontapped: () {},
                text: 'Next',
                isActive: true,
                width: MediaQuery.sizeOf(context).width,
              ),
            )
          ],
        ),
      ),
    ));
  }
}

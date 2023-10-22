import 'package:findjop/core/customwidgets/optiontitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/appbarwithouticon.dart';
import 'savedjopitem.dart';

class SavedJopsView extends StatelessWidget {
  SavedJopsView({super.key});
  int savedjopnum = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(context: context, ontap: () {}, title: 'Saved'),
      body: Column(
        children: [
          OptionTitle(
            height: 67,
            isCenterTitle: true,
            isReadMore: false,
            title: '$savedjopnum Saved Jop',
            //textalign: TextAlign.center,
          ),
          SizedBox(
            height: 25.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => const SavedJopItem(),
            ),
          ),
        ],
      ),
    );
  }
}

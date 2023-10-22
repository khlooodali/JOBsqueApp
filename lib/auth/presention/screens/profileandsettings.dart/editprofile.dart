import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/helpermethod/navigatetonextpage.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';
import 'widgets/changephoto.dart';
import 'widgets/editprofileform.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Edite Profile'),
      body: Padding(
        padding: EdgeInsets.only(top: 36.h, right: 24.w, left: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ChangePhoto(),
              EditProfileForm(),
              SizedBox(
                height: 83.h,
              ),
              CusttomButton(
                  ontapped: () {},
                  text: 'Save',
                  isActive: true,
                  width: MediaQuery.of(context).size.width)
            ],
          ),
        ),
      ),
    );
  }
}

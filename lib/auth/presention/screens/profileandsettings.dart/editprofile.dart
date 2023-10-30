import 'dart:io';

import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/customwidgets/helpermethod/navigatetonextpage.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';
import 'widgets/changephoto.dart';
import 'widgets/editprofileform.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File? myFile;
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
              ChangePhoto(ontap: () async {
                XFile? xfile =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (xfile != null) {
                  setState(() {
                    myFile = File(xfile.path);
                  });
                }
              }),
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

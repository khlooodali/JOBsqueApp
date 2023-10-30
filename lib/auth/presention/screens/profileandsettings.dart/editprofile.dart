import 'dart:io';

import 'package:findjop/auth/presention/screens/profileandsettings.dart/cubit/cubit/profile_cubit.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/portfilio.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _handphoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? imagepath;
  File? myFile;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      ProfileCubit profile = BlocProvider.of(context);
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
                ChangePhoto(
                    imagepath: imagepath,
                    ontap: () async {
                      var image = await ImagePicker.platform
                          .getImage(source: ImageSource.gallery);

                      if (image != null) imagepath = image.path;
                      setState(() {});
                    }),
                EditProfileForm(
                    formKey: _formKey,
                    nameController: _nameController,
                    addressController: _addressController,
                    bioController: _bioController,
                    handphoneController: _handphoneController),
                SizedBox(
                  height: 83.h,
                ),
                BlocBuilder<ProfileCubit, ProfileStates>(
                  builder: (context, state) {
                    if (state is LoadingProfile) {
                      const Center(
                          child: CircularProgressIndicator(
                        color: AppColor.primaryColor500,
                      ));
                    } else if (state is FailetoUploadProfile) {
                      const Center(
                        child: Text('FailetoUploadProfile'),
                      );
                    }
                    return CusttomButton(
                        ontapped: () {
                          if (_formKey.currentState!.validate()) {
                            profile.uploadData(
                                _bioController.text,
                                _addressController.text,
                                _handphoneController.text,
                                context);

                            nextTo(
                                context,
                                PortfolioView(
                                  Pathimage: imagepath,
                                ));
                          }
                        },
                        text: 'Save',
                        isActive: true,
                        width: MediaQuery.of(context).size.width);
                  },
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

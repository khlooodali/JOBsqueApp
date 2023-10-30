import 'package:findjop/core/constant/strings.dart';
import 'package:flutter/material.dart';

import '../../../../../core/customwidgets/customtextfiledcountry.dart';
import '../../../../../jop/presention/widgets/specialtextfiled.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm(
      {super.key,
      required this.nameController,
      required this.bioController,
      required this.addressController,
      required this.handphoneController,
      this.formKey});
  final TextEditingController nameController;
  final TextEditingController bioController;
  final TextEditingController addressController;
  final TextEditingController handphoneController;
  final formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SpecialTextFiled(
              isdark: true,
              controller: nameController,
              iconName: '',
              isStar: false,
              isred: false,
              text: 'Name',
              hint: userName),
          SpecialTextFiled(
              controller: bioController,
              iconName: '',
              isStar: false,
              isdark: true,
              isred: false,
              text: 'Bio',
              hint: 'as grafic Designer'),
          SpecialTextFiled(
            controller: addressController,
            iconName: '',
            isStar: false,
            isred: false,
            isdark: true,
            text: 'Adress',
            hint: ' enter your address ',
          ),
          CountryFiled(
            hint: 'enter your phone',
            controller: handphoneController,
            isStar: false,
            text: '',
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/customwidgets/customtextfiledcountry.dart';
import '../../../../../jop/presention/widgets/specialtextfiled.dart';

class EditProfileForm extends StatelessWidget {
  EditProfileForm({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _handphoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SpecialTextFiled(
            controller: _nameController,
            iconName: '',
            isStar: false,
            text: 'Name',
            hint: 'Rafif Dian Axelingga'),
        SpecialTextFiled(
            controller: _bioController,
            iconName: '',
            isStar: false,
            text: 'Bio',
            hint: 'Senior UI/UX Designer'),
        SpecialTextFiled(
          controller: _addressController,
          iconName: '',
          isStar: false,
          text: 'Adress',
          hint: 'Ranjingan, Wangon, Wasington City',
        ),
        CountryFiled(
          hint: '0100-666-7234',
          controller: _handphoneController,
          isStar: false,
          text: 'No.Handphone',
        )
      ],
    );
  }
}

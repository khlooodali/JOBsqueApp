import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';

import '../../../../core/customwidgets/customtextfiledcountry.dart';
import '../../widgets/specialtextfiled.dart';
import 'widgets/steptitle.dart';

class BioDataForm extends StatefulWidget {
  const BioDataForm({super.key});

  @override
  State<BioDataForm> createState() => _BioDataFormState();
}

class _BioDataFormState extends State<BioDataForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const StepTitle(
                title: 'Biodata', subtitle: 'Fill in your bio data correctly'),
            Column(
              children: [
                SpecialTextFiled(
                  isdark: true,
                  isred: true,
                  hint: '',
                  isStar: true,
                  controller: _nameController,
                  iconName: 'profile',
                  text: 'Full Name',
                ),
                SpecialTextFiled(
                  isdark: true,
                  isred: true,
                  isStar: true,
                  hint: '',
                  controller: _emailController,
                  iconName: 'sms',
                  text: 'Email',
                ),
                CountryFiled(
                    hint: '',
                    controller: _phoneController,
                    isStar: true,
                    text: 'No.Handphone'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

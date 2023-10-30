import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/experiance/controller/cubit/experince_cubit_cubit.dart';
import 'package:findjop/jop/presention/widgets/specialtextfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dropdowentextfiled.dart';

class ExperinceBody extends StatefulWidget {
  const ExperinceBody({super.key});

  @override
  State<ExperinceBody> createState() => _ExperinceBodyState();
}

class _ExperinceBodyState extends State<ExperinceBody> {
  final TextEditingController _positionController = TextEditingController();

  final TextEditingController _typeOfWorkController = TextEditingController();

  final TextEditingController _companyNameController = TextEditingController();

  final TextEditingController _locationController = TextEditingController();

  final TextEditingController _startYearController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isCheck = false;
  String? val;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Builder(builder: (context) {
          ExperinceCubitCubit cubit = BlocProvider.of(context);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpecialTextFiled(
                isdark: false,
                isred: false,
                isStar: true,
                hint: '',
                controller: _positionController,
                iconName: '',
                text: 'Position',
              ),
              Column(
                children: [
                  const titleFiled(
                      isdarktitle: false,
                      isredStar: false,
                      title: 'Type of Work'),
                  SizedBox(
                    height: 6.h,
                  ),
                  DropdownButtonFormField(
                      hint: const Text('Full Time'),
                      style: TextStyle(
                          fontSize: 16.sp, color: AppColor.naturalColor600),
                      items: const [
                        DropdownMenuItem(
                          value: 'full Time',
                          child: Text('Full Time'),
                        ),
                        DropdownMenuItem(
                          value: 'part Time',
                          child: Text('part Time'),
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        val = value;
                        setState(() {});
                        print('val is $val');
                      }),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
              SpecialTextFiled(
                isdark: false,
                isred: false,
                isStar: true,
                hint: '',
                controller: _companyNameController,
                iconName: '',
                text: 'Company name',
              ),
              SpecialTextFiled(
                isdark: false,
                isred: false,
                isStar: false,
                hint: '',
                controller: _locationController,
                iconName: 'location',
                text: 'Location',
              ),
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        isCheck = value!;
                        setState(() {});
                      }),
                  Text(
                    'I am currently working in this role',
                    style: Theme.of(context).textTheme.labelLarge,
                  )
                ],
              ),
              SpecialTextFiled(
                isdark: false,
                isred: false,
                isStar: true,
                hint: '',
                controller: _startYearController,
                iconName: '',
                text: 'Staet Year',
              ),
              BlocBuilder<ExperinceCubitCubit, ExperinceCubitStates>(
                builder: (context, state) {
                  return CusttomButton(
                      ontapped: () {
                        if (_formKey.currentState!.validate()) {
                          cubit.addExperince(
                              userId,
                              _positionController.text,
                              val!,
                              _companyNameController.text,
                              _locationController.text,
                              _startYearController.text,
                              context);
                        }
                      },
                      text: 'Save',
                      isActive: true,
                      width: MediaQuery.of(context).size.width);
                },
              )
            ],
          );
        }),
      ),
    );
  }
}

import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/auth/presention/screens/profileandsettings.dart/view.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customtextfield/view.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  bool ishide = true;
  final TextEditingController _oldpasswordController = TextEditingController();
  final TextEditingController _newNameController = TextEditingController();
  final TextEditingController _newpasswordController = TextEditingController();
  final TextEditingController _confirmnewpasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AuthCubit updateCubit = BlocProvider.of(context);
      return Scaffold(
        appBar: AppBarWithoutIcon(
            context: context,
            ontap: () {
              nextTo(context, ProfileAndSettingsView(), isreplace: true);
            },
            title: 'Change Password'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: _formKey,
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44.h,
                ),
                Text(
                  'Enter your userName',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                CustomTextField(
                  isBold: false,
                  ispassword: false,
                  hint: ' New Username',
                  iconname: 'profile',
                  controller: _newNameController,
                  type: TextInputType.name,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Username';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  'Enter your old password',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
                  child: CustomTextField(
                    ispassword: true,
                    isBold: false,
                    hint: 'Passwoed',
                    iconname: 'lock',
                    siconname: 'hide',

                    controller: _oldpasswordController,
                    type: TextInputType.visiblePassword,
                    //errorText: 'Password must be at least 8 characters',

                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      final passwordRegex =
                          RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                      if (!passwordRegex.hasMatch(value)) {
                        return 'Password must be at least 8 characters, including at least one letter and one number';
                      }

                      return null;
                    },
                  ),
                ),
                Text(
                  'Enter your New password',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
                  child: CustomTextField(
                    ispassword: true,
                    isBold: false,
                    hint: 'Passwoed',
                    iconname: 'lock',
                    siconname: 'hide',

                    controller: _newpasswordController,
                    type: TextInputType.visiblePassword,
                    //errorText: 'Password must be at least 8 characters',

                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your  New Password';
                      }
                      final passwordRegex =
                          RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                      if (!passwordRegex.hasMatch(value)) {
                        return 'Password must be at least 8 characters, including at least one letter and one number';
                      }

                      return null;
                    },
                  ),
                ),
                Text(
                  'Confirm your new password',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, bottom: 20.h),
                  child: CustomTextField(
                    ispassword: true,
                    isBold: false,
                    hint: 'Passwoed',
                    iconname: 'lock',
                    siconname: 'hide',

                    controller: _confirmnewpasswordController,
                    type: TextInputType.visiblePassword,
                    //errorText: 'Password must be at least 8 characters',

                    validation: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Confirm Password';
                      }
                      if (value != _newpasswordController.text) {
                        return 'Your password and confirmation password do not match.';
                      }
                      final passwordRegex =
                          RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
                      if (!passwordRegex.hasMatch(value)) {
                        return 'Password must be at least 8 characters, including at least one letter and one number';
                      }

                      return null;
                    },
                  ),
                ),
                const Spacer(),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    if (state is ChangeLoadingState) {
                      const Center(
                          child: CircularProgressIndicator(
                        color: AppColor.primaryColor500,
                      ));
                    } else if (state is FailChangeState) {}
                    return CusttomButton(
                        ontapped: () {
                          print(_confirmnewpasswordController.text);
                          print(_newpasswordController.text);
                          if (_formKey.currentState!.validate()) {
                            updateCubit.updateNameAndPassword(
                                _newNameController.text,
                                _confirmnewpasswordController.text,
                                context);
                          }
                        },
                        text: 'Save',
                        isActive: true,
                        width: MediaQuery.of(context).size.width);
                  },
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

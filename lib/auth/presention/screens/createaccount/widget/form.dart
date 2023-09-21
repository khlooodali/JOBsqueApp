import 'package:findjop/core/customwidgets/customtextfield/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/customwidgets/custombttn/view.dart';
import '../../../widgets/goback.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool ishide = true;
  bool isselected = false;
  bool emptypassword = true;
  bool validpassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      //autovalidateMode: AutovalidateMode.always,
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            isBold: false,
            ispassword: false,
            hint: 'Username',
            iconname: 'profile',
            controller: nameController,
            type: TextInputType.name,
            onchange: (value) {
              isselected = nameController.text.isEmpty ? false : true;
              setState(() {});
              return null;
            },
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
          CustomTextField(
            isBold: false,
            ispassword: false,
            hint: 'Email',
            iconname: 'sms',
            controller: emailController,
            type: TextInputType.emailAddress,
            validation: (value) {
              if (value!.isEmpty) {
                return 'Please Enter Your Email';
              }
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return 'Please Enter Valid Email';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            ispassword: ishide,
            isBold: false,
            hint: 'Passwoed',
            iconname: 'lock',
            siconname: ishide ? 'Show' : 'hide',
            tappedicon: () {
              ishide = !ishide;
              setState(() {});
            },
            controller: passwordController,
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
          SizedBox(
            height: 138.h,
          ),
          const GoBackView(
            islogin: false,
            isresetpassword: false,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h, bottom: 20.h),
            child: CusttomButton(
              width: MediaQuery.sizeOf(context).width,
              ontapped: () {
                if (_formKey.currentState!.validate()) {}
              },
              text: 'Create account',
              isActive: isselected,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/customwidgets/custombttn/view.dart';
import '../../../../../core/customwidgets/customtextfield/view.dart';
import '../../../widgets/goback.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isselected = false;
  bool ishide = true;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextField(
            isEmpty: true,
            isvalid: false,
            ispassword: false,
            hint: 'Username',
            iconname: 'profile',
            controller: _nameController,
            type: TextInputType.name,
            onchange: (value) {
              isselected = _nameController.text.isEmpty ? false : true;
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
            isEmpty: true,
            isvalid: false,
            ispassword: ishide,
            hint: 'Passwoed',
            iconname: 'lock',
            siconname: ishide ? 'Show' : 'hide',
            tappedicon: () {
              ishide = !ishide;
              setState(() {});
            },
            controller: _passwordController,
            type: TextInputType.visiblePassword,
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
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: isCheck,
                        onChanged: (value) {
                          isCheck = value!;
                          setState(() {});
                        }),
                    Text(
                      'Remember me',
                      style: Theme.of(context).textTheme.labelLarge,
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.labelSmall,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 173.h,
          ),
          const GoBackView(
            islogin: true,
            isresetpassword: false,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.h),
            child: CusttomButton(
              width: MediaQuery.sizeOf(context).width,
              ontapped: () {
                if (_formKey.currentState!.validate()) {}
              },
              text: 'Login',
              isActive: isselected,
            ),
          ),
        ],
      ),
    );
  }
}

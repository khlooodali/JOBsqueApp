import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isselected = false;
  bool ishide = true;
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AuthCubit loginCupit = BlocProvider.of(context);
      return Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              isBold: false,
              ispassword: false,
              hint: 'Email',
              iconname: 'sms',
              controller: _emailController,
              type: TextInputType.emailAddress,
              onchange: (value) {
                isselected = _emailController.text.isEmpty ? false : true;
                setState(() {});
                return null;
              },
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
              isBold: false,
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
                  // TextButton(
                  //     onPressed: () {
                  //       nextTo(context, ConfirmPasswordView());
                  //     },
                  //     child: Text(
                  //       'Update Password?',
                  //       style: Theme.of(context).textTheme.labelSmall,
                  //     ))
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
              child: BlocBuilder<AuthCubit, AuthState>(
                bloc: loginCupit,
                builder: (context, state) {
                  if (state is LoginLoadingState) {
                    const CircularProgressIndicator();
                  } else if (state is LoginFailState) {}
                  return CusttomButton(
                    width: MediaQuery.sizeOf(context).width,
                    ontapped: () {
                      if (_formKey.currentState!.validate()) {
                        loginCupit.login(_emailController.text,
                            _passwordController.text, context);
                      }
                    },
                    text: 'Login',
                    isActive: isselected,
                  );
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}

import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/customtextfield/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/jop/presention/widgets/appbarwithouticon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view.dart';

class VerficationWithEmail extends StatelessWidget {
  VerficationWithEmail({super.key});
  final TextEditingController _verifyEmailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AuthCubit verifyCupit = BlocProvider.of(context);

      return Scaffold(
        appBar: AppBarWithoutIcon(
            context: context,
            ontap: () {
              nextTo(context, ProfileAndSettingsView(), isreplace: true);
            },
            title: 'Email address'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44.h,
                ),
                Text(
                  '"Enter your Email to get Code',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                  isBold: true,
                  hint: 'Enter your Email',
                  iconname: 'sms',
                  controller: _verifyEmailController,
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Email For Verify';
                    }
                    final emailRegex =
                        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please Enter Valid Email';
                    } else {
                      return null;
                    }
                  },
                  type: TextInputType.emailAddress,
                  ispassword: false,
                ),
                const Spacer(),
                BlocBuilder<AuthCubit, AuthState>(
                  bloc: verifyCupit,
                  builder: (context, state) {
                    if (state is LoadingState) {
                      const CircularProgressIndicator();
                    } else if (state is FailState) {}

                    return CusttomButton(
                        ontapped: () {
                          if (_formKey.currentState!.validate()) {
                            verifyCupit.getOtp(
                                _verifyEmailController.text, context);
                          }
                        },
                        text: 'Send Email',
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

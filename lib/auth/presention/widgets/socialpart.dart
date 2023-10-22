import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/theme/appcolors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customsocialbtn/view.dart';

class SignUpWithSocialView extends StatelessWidget {
  const SignUpWithSocialView({super.key, required this.operationName});
  final String operationName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 50.w,
              height: 2,
              color: AppColor.naturalColor300,
            ),
            Text(
              'Or $operationName With Account',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Container(
              width: 50.w,
              height: 2,
              color: AppColor.naturalColor300,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {},
              builder: (context, state) {
                return CustomOutLineIconBtnn(
                  ontap: state is GoogleAuthLoadingState
                      ? null
                      : () => context.read<AuthCubit>().loginWithGoogle(),
                  icon: 'google',
                  label: state is GoogleAuthLoadingState
                      ? const CircularProgressIndicator()
                      : Text(
                          'Google',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                );
              },
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {},
              builder: (context, state) {
                return CustomOutLineIconBtnn(
                  ontap: state is FacebookAuthLoadingState
                      ? null
                      : () => context.read<AuthCubit>().loginWithFacebook(),
                  icon: 'Facebook',
                  label: state is FacebookAuthLoadingState
                      ? const CircularProgressIndicator()
                      : Text(
                          'Facebook',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                );
              },
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}

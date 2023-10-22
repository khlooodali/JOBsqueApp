import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/customappbar/view.dart';
import '../../widgets/socialpart.dart';
import '../../widgets/title.dart';
import 'widget/loginform.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(isback: false, islogo: true, tap: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 44.h,
              ),
              const CreateAccountTitle(
                title: 'Login',
                subtitle: 'Please login to find your dream job',
                space: 8,
              ),
              SizedBox(
                height: 44.h,
              ),
              const LoginForm(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: SignUpWithSocialView(
                  operationName: 'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

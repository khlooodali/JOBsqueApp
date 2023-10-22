import 'package:findjop/auth/presention/screens/createaccount/view.dart';
import 'package:findjop/auth/presention/screens/login/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';

class GoBackView extends StatelessWidget {
  const GoBackView({
    super.key,
    required this.islogin,
    required this.isresetpassword,
  });

  final bool islogin;
  final bool isresetpassword;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isresetpassword
              ? 'You remember your password'
              : islogin
                  ? 'Dont’t have an account?'
                  : 'Already have an account?',
          style: Theme.of(context).inputDecorationTheme.hintStyle,
        ),
        TextButton(
            onPressed: () {
              nextTo(
                  context, islogin ? CreateAccountView() : const LoginView());
            },
            child: Text(
              islogin ? 'Register' : 'Login',
              style: Theme.of(context).textTheme.labelSmall,
            ))
      ], //navigation to signup
    );
  }
}

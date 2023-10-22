import 'package:flutter/material.dart';

void nextTo(BuildContext context, Widget page,
    {bool isreplace = false, iskeep = true}) {
  iskeep
      ? isreplace
          ? Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => page))
          : Navigator.push(
              context, MaterialPageRoute(builder: (context) => page))
      : Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => page), (route) => iskeep);
}

import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../jop/presention/Screens/searchjop/searchview.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({super.key});
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const SearchView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(_createRoute());
      },
      child: Container(
        height: 48.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            border: Border.all(color: AppColor.naturalColor300, width: 1)),
        child: Row(
          children: [
            SizedBox(
              width: 12.w,
            ),
            SvgPicture.asset(
              'assets/icons/search.svg',
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              'Search.....',
              style: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
          ],
        ),
      ),
    );
  }
}

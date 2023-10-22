import 'dart:convert';

import 'package:findjop/core/customwidgets/customappbar/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';
import 'package:findjop/jop/presention/widgets/appbarwithouticon.dart';
import 'package:findjop/jop/presention/widgets/jopitem.dart';
import 'package:findjop/mainpage/pages/homepage.dart';
import 'package:findjop/mainpage/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AllJops extends StatelessWidget {
  const AllJops({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);

      return SafeArea(
        child: Scaffold(
            appBar: AppBarWithoutIcon(
                context: context,
                ontap: () {
                  nextTo(context, const MainPageView());
                },
                title: 'All Jops'),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: BlocBuilder<JopCubit, JopStates>(
                builder: (context, state) {
                  if (state is JopLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is JopLoadedSuccessfully) {
                    return ListView.builder(
                        itemCount: cubit.jopModel.jop.length,
                        itemBuilder: (context, index) {
                          return JopItem(index: index);
                        });
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            )),
      );
    });
  }
}

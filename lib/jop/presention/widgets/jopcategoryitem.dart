import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/appcolors.dart';

class JopCategory extends StatelessWidget {
  const JopCategory({super.key, required this.isSuggest, required this.index});
  final bool isSuggest;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);
      cubit.getAllJops;
      return Container(
        width: isSuggest ? 82.w : 70.w,
        height: isSuggest ? 32.h : 30.h,
        decoration: BoxDecoration(
            color: isSuggest
                ? Colors.white.withOpacity(.14)
                : AppColor.primaryColor100,
            borderRadius: BorderRadius.circular(100.r)),
        child: Center(child: BlocBuilder<JopCubit, JopStates>(
          builder: (context, state) {
            if (state is JopLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is JopLoadedSuccessfully) {
              return Text(
                cubit.jopModel.jop[index].jobTimeType,
                style: isSuggest
                    ? Theme.of(context).textTheme.displayMedium
                    : TextStyle(
                        fontSize: 12.sp, color: AppColor.primaryColor500),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )),
      );
    });
    //  Wrap
    //     spacing: 8, //runSpacing: 16,
    //     children: [
    //       ...List.generate(
    //         list.length,
    //         (index) => //container
    //       )
    //     ]);
  }
}

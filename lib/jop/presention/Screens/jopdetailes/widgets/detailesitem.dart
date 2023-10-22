import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/jopcategoryitem.dart';

class DetailesJopItem extends StatelessWidget {
  const DetailesJopItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);
      return BlocBuilder<JopCubit, JopStates>(
        builder: (context, state) {
          if (state is JopLoading) {
            return const CircularProgressIndicator();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  clipBehavior: Clip.antiAlias,
                  height: 48.h,
                  width: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent),
                  child: Image(
                      image: NetworkImage(cubit.jopModel.jop[index].image))),
              Padding(
                padding: EdgeInsets.only(top: 12.h, bottom: 8.h),
                child: Text(
                  cubit.jopModel.jop[index].name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Text(
                cubit.jopModel.jop[index].location,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                ),
                child: JopCategory(
                  isSuggest: false,
                  index: index,
                ),
              ),
            ],
          );
        },
      );
    });
  }
}

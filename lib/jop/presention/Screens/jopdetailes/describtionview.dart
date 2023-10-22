import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JopDescrebtion extends StatelessWidget {
  const JopDescrebtion({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Job Description',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 8.h,
          ),
          BlocBuilder<JopCubit, JopStates>(
            builder: (context, state) {
              if (state is JopLoading) {
                return const CircularProgressIndicator();
              }
              return Text(
                cubit.jopModel?.jop[index].jobDescription ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 10,
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Skill Required',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 8.h,
          ),
          BlocBuilder<JopCubit, JopStates>(
            builder: (context, state) {
              if (state is JopLoading) {
                return const CircularProgressIndicator();
              }
              return Text(
                cubit.jopModel?.jop[index].jobSkill ?? "",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 10,
              );
            },
          ),
        ],
      );
    });
  }
}

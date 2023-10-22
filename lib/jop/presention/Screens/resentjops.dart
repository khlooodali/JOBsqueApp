//listviewof jop item
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../controller/cubit/jop_cubit.dart';
import '../widgets/jopitem.dart';

class ResentJops extends StatelessWidget {
  const ResentJops({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);

      return BlocBuilder<JopCubit, JopStates>(
        builder: (context, state) {
          if (state is JopLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
            // Shimmer.fromColors(
            //     enabled: true,
            //     baseColor: Colors.grey.shade300,
            //     highlightColor: Colors.grey.shade100,
            //     child: const ListTile());
          } else if (state is JopLoadedSuccessfully) {
            return SizedBox(
              height: 500.h,
              child: ListView.builder(
                  itemCount: cubit.jopModel.jop.length,
                  itemBuilder: (context, index) {
                    return JopItem(index: index);
                  }),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    });
  }
}

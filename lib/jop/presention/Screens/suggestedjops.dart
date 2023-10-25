//listofsuggesteditem;
import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/suggestedjopitem.dart';

class SuggestedJops extends StatelessWidget {
  const SuggestedJops({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 220.h,
        child: BlocBuilder<JopCubit, JopStates>(
          builder: (context, state) {
            if (state is JopLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is JopLoadedSuccessfully) {
              return ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 16.w,
                    );
                  },
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: cubit.jopModel.jop.length,
                  itemBuilder: (context, index) {
                    return SuggestedJopItem(
                      index: index,
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );
    });
  }
}

import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/theme/appcolors.dart';

class PriceOfJopItem extends StatelessWidget {
  const PriceOfJopItem(
      {super.key, required this.isSuggested, required this.index});
  final bool isSuggested;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);

      return Row(
        children: [
          BlocBuilder<JopCubit, JopStates>(
            builder: (context, state) {
              if (state is JopLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is JopLoadedSuccessfully) {
                return Text(cubit.jopModel.jop[index].salary,
                    style: isSuggested
                        ? Theme.of(context).textTheme.bodyMedium
                        : const TextStyle(
                            fontSize: 12, color: AppColor.successColor700));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          Text('/Month',
              style: isSuggested
                  ? TextStyle(fontSize: 12, color: Colors.white.withOpacity(.5))
                  : const TextStyle(
                      fontSize: 12, color: AppColor.naturalColor500))
        ],
      );
    });
  }
}

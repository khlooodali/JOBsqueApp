import 'package:findjop/auth/presention/controller/cubit/cubit/auth_cubit.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/jop/presention/Screens/savedjop/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theme/appcolors.dart';
import '../controller/cubit/jop_cubit.dart';

class JopItemTitle extends StatefulWidget {
  const JopItemTitle({super.key, required this.isSuggest, required this.index});
  final bool isSuggest;
  final int index;

  @override
  State<JopItemTitle> createState() => _JopItemTitleState();
}

class _JopItemTitleState extends State<JopItemTitle> {
  bool issaved = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit jopCubit = BlocProvider.of(context);
      jopCubit.getAllJops;
      return BlocBuilder<JopCubit, JopStates>(
        builder: (context, state) {
          if (state is JopLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is JopLoadedSuccessfully) {
            return ListTile(
              leading: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: widget.isSuggest ? Colors.white : Colors.transparent,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Center(
                  child: Image.network(
                    jopCubit.jopModel.jop[widget.index].image,
                  ),
                ),
              ),
              title: Text(
                jopCubit.jopModel.jop[widget.index].name,
                style: widget.isSuggest
                    ? Theme.of(context).textTheme.bodyMedium
                    : Theme.of(context).textTheme.bodySmall,
              ),
              subtitle: Text(
                maxLines: 1,
                jopCubit.jopModel.jop[widget.index].location,
                style: widget.isSuggest
                    ? Theme.of(context).textTheme.labelMedium
                    : Theme.of(context).textTheme.bodyLarge,
              ),
              trailing: InkWell(
                onTap: () {
                  issaved = !issaved;
                  setState(() {});
                },
                child: SvgPicture.asset(
                  issaved
                      ? 'assets/icons/savedfill.svg'
                      : 'assets/icons/save.svg',
                  fit: BoxFit.scaleDown,
                  color: widget.isSuggest
                      ? Colors.white
                      : AppColor.primaryColor900,
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );
    });
  }
}

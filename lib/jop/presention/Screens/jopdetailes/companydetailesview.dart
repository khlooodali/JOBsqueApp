import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/controller/cubit/jop_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyDetailes extends StatelessWidget {
  const CompanyDetailes({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      JopCubit cubit = BlocProvider.of(context);
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact Us',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 8.h,
          ),
          BlocBuilder<JopCubit, JopStates>(
            builder: (context, state) {
              if (state is JopLoading) {
                const CircularProgressIndicator();
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ContactItem(
                    isEmail: true,
                    text: cubit.jopModel?.jop[index].compEmail ?? "",
                  ),
                  ContactItem(
                    isEmail: false,
                    text: cubit.jopModel?.jop[index].compWebsite ?? "",
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'About Company',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(
            height: 8.h,
          ),
          BlocBuilder<JopCubit, JopStates>(
            builder: (context, state) {
              return Text(
                cubit.jopModel?.jop[index].aboutComp ?? "",
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

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.isEmail, required this.text});
  final bool isEmail;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 157.w,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: AppColor.naturalColor200)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isEmail ? 'Email' : 'Website',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}

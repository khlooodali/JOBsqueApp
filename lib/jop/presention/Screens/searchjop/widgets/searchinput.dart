import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/appcolors.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  bool isEmpty = true;

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SizedBox(
        height: 48.h,
        child: TextFormField(
          onTap: () {},
          onChanged: (value) {
            if (value.isNotEmpty) {
              isEmpty = !isEmpty;
              setState(() {});
            }
          },
          autofocus: true,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColor.naturalColor900,
              fontSize: 14,
              textBaseline: TextBaseline.alphabetic),
          showCursor: true,
          cursorColor: AppColor.primaryColor500,
          cursorHeight: 20,
          controller: _searchController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            icon: SvgPicture.asset(
              'assets/icons/arrow-left.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            hintText: 'Type Somthing....',
            hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
            prefixIcon: SvgPicture.asset(
              'assets/icons/search.svg',
              width: 24,
              height: 24,
              fit: BoxFit.scaleDown,
            ),
            suffixIcon: isEmpty
                ? const SizedBox()
                : InkWell(
                    onTap: () {
                      //clear search
                    },
                    child: SvgPicture.asset(
                      'assets/icons/close.svg',
                      width: 24,
                      height: 24,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
            focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColor.naturalColor300, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            enabledBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColor.naturalColor300, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(100))),
          ),
        ),
      ),
    );
  }
}

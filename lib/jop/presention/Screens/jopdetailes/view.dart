import 'package:findjop/jop/presention/Screens/jopdetailes/companydetailesview.dart';
import 'package:findjop/jop/presention/Screens/jopdetailes/peopledetailesview.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/custombttn/view.dart';
import '../../../../core/theme/appcolors.dart';
import 'describtionview.dart';
import 'widgets/customappbarforjop.dart';
import 'widgets/detailesitem.dart';
import 'widgets/detailesoption.dart';

class JopDetailesView extends StatefulWidget {
  const JopDetailesView({
    super.key,
    required this.jopindex,
  });
  final int jopindex;
  // final JopModel model;
  @override
  State<JopDetailesView> createState() => _JopDetailesViewState();
}

class _JopDetailesViewState extends State<JopDetailesView> {
  int index = 0;

  bool isCompany = false;
  bool ispeople = false;
  bool isDescription = true;
  Widget DetailesOptions() {
    return Container(
      width: 327.w,
      height: 46.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColor.naturalColor100),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              isDescription = true;
              ispeople = false;
              isCompany = false;
              index = 0;
              setState(() {});
            },
            child: Align(
                alignment: Alignment.topLeft,
                child: OptionItem(
                  optionName: 'Descreption',
                  isactive: isDescription,
                )),
          ),
          GestureDetector(
            onTap: () {
              index = 1;
              isDescription = false;
              ispeople = false;
              isCompany = true;
              setState(() {});
            },
            child: Align(
                alignment: Alignment.center,
                child: OptionItem(
                  optionName: 'Company',
                  isactive: isCompany,
                )),
          ),
          GestureDetector(
            onTap: () {
              index = 2;
              isDescription = false;
              ispeople = true;
              isCompany = false;
              setState(() {});
            },
            child: Align(
                alignment: Alignment.topRight,
                child: OptionItem(
                  optionName: 'people',
                  isactive: ispeople,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> options = [
      JopDescrebtion(
        index: widget.jopindex,
      ),
      CompanyDetailes(
        index: widget.jopindex,
      ),
      const PeopleDetailes()
    ];
    return SafeArea(
      child: Scaffold(
        appBar: getAppbarJop(context, 'Job Detail'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Stack(
            //direction: Axis.vertical,
            children: [
              Column(
                children: [
                  Center(
                    child: Positioned(
                        top: 32.h,
                        child: DetailesJopItem(
                          index: widget.jopindex,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32.h),
                    child: DetailesOptions(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: options[index],
                  ),
                ],
              ),
              Positioned(
                bottom: 20.h,
                child: CusttomButton(
                  ontapped: () {},
                  text: 'Apply now',
                  isActive: true,
                  width: 327.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

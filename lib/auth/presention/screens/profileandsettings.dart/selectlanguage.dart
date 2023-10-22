import 'package:country_flags/country_flags.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';

class SelectLanguageView extends StatefulWidget {
  const SelectLanguageView({super.key});

  @override
  State<SelectLanguageView> createState() => _SelectLanguageViewState();
}

class _SelectLanguageViewState extends State<SelectLanguageView> {
  int groupval = 0;

  List country = [
    {'countrycode': 'LON', 'countryname': 'English'},
    {'countrycode': 'id', 'countryname': 'Indonesia'},
    {'countrycode': 'SA', 'countryname': 'Arabic'},
    {'countrycode': 'CN', 'countryname': 'Chinese'},
    {'countrycode': 'LU', 'countryname': 'Dutch'},
    {'countrycode': 'FR', 'countryname': 'French'},
    {'countrycode': 'DE', 'countryname': 'German'},
    {'countrycode': 'jp', 'countryname': 'Japanese'},
    {'countrycode': 'kr', 'countryname': 'Korean'},
    {'countrycode': 'PT', 'countryname': 'Portuguese'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWithoutIcon(
            context: context,
            ontap: () {
              nextTo(context, const ProfileAndSettingsView(), isreplace: true);
            },
            title: 'Language'),
        body: Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: ListView.builder(
              itemCount: country.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: [
                      RadioListTile(
                          activeColor: AppColor.primaryColor500,
                          title: Row(
                            children: [
                              CountryFlag.fromCountryCode(
                                country[index]['countrycode'],
                                height: 20,
                                width: 30,
                                borderRadius: 8,
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                country[index]['countryname'],
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                            ],
                          ),
                          controlAffinity: ListTileControlAffinity.trailing,
                          value: index,
                          groupValue: groupval,
                          onChanged: (value) {
                            groupval = value!;
                            setState(() {});
                          }),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Divider(
                        thickness: 1,
                        color: AppColor.naturalColor300,
                      )
                    ],
                  ),
                );
              }),
        ));
  }
}

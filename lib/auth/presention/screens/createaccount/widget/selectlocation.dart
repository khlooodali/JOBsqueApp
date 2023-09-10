import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<LocationItem> locationlist = [
  LocationItem(
    countryCode: 'us',
    countryName: 'United States',
    isselected: true,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'my',
    countryName: 'Malaysia',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: '',
    countryName: 'Singapore',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'id',
    countryName: 'Indonesia',
    isselected: true,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'PH',
    countryName: 'Philiphines',
    isselected: true,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'PL',
    countryName: 'Polandia',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'in',
    countryName: 'India',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'VN',
    countryName: 'Vietnam',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'CN',
    countryName: 'China',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'ca',
    countryName: 'Canada',
    isselected: true,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'SA',
    countryName: 'Saudi Arabia',
    isselected: true,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'AR',
    countryName: 'Argentina',
    isselected: false,
    tap: () {},
  ),
  LocationItem(
    countryCode: 'br',
    countryName: 'Brazil',
    isselected: false,
    tap: () {},
  ),
];

class LocationItem extends StatelessWidget {
  final bool isselected;
  final String countryName;
  final String countryCode;
  final VoidCallback tap;

  const LocationItem(
      {super.key,
      required this.isselected,
      required this.countryName,
      required this.countryCode,
      required this.tap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        height: 45.h,
        // width: 151.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                width: 1,
                color: isselected
                    ? AppColor.primaryColor500
                    : AppColor.naturalColor200),
            color: isselected
                ? AppColor.primaryColor100
                : AppColor.naturalColor200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                getCountryflag(countryCode),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                countryName,
                style: Theme.of(context).textTheme.displayLarge,
              )
            ],
          ),
        ),
      ),
    );
  }

  String getCountryflag(String countrycode) {
    String flag = countrycode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));

    return flag;
  }
}

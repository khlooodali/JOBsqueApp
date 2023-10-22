import 'package:findjop/core/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<LocationItem> locationlist = [
  const LocationItem(
    countryCode: 'us',
    countryName: 'United States',
  ),
  const LocationItem(
    countryCode: 'my',
    countryName: 'Malaysia',
  ),
  const LocationItem(
    countryCode: 'sg',
    countryName: 'Singapore',
  ),
  const LocationItem(
    countryCode: 'id',
    countryName: 'Indonesia',
  ),
  const LocationItem(
    countryCode: 'PH',
    countryName: 'Philiphines',
  ),
  const LocationItem(
    countryCode: 'PL',
    countryName: 'Polandia',
  ),
  const LocationItem(
    countryCode: 'in',
    countryName: 'India',
  ),
  const LocationItem(
    countryCode: 'VN',
    countryName: 'Vietnam',
  ),
  const LocationItem(
    countryCode: 'CN',
    countryName: 'China',
  ),
  const LocationItem(
    countryCode: 'ca',
    countryName: 'Canada',
  ),
  const LocationItem(
    countryCode: 'SA',
    countryName: 'Saudi Arabia',
  ),
  const LocationItem(
    countryCode: 'AR',
    countryName: 'Argentina',
  ),
  const LocationItem(
    countryCode: 'br',
    countryName: 'Brazil',
  ),
];

class LocationItem extends StatefulWidget {
  final String countryName;
  final String countryCode;

  const LocationItem({
    super.key,
    required this.countryName,
    required this.countryCode,
  });

  @override
  State<LocationItem> createState() => _LocationItemState();
}

class _LocationItemState extends State<LocationItem> {
  bool isselected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isselected = !isselected;
        setState(() {});
      },
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
              //CircleFlag(countryCode),
              Text(
                getCountryflag(widget.countryCode),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                widget.countryName,
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

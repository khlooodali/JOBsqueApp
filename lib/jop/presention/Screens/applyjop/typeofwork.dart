import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/appcolors.dart';
import 'widgets/steptitle.dart';

class TypeOfWork extends StatefulWidget {
  const TypeOfWork({super.key});

  @override
  State<TypeOfWork> createState() => _TypeOfWorkState();
}

class _TypeOfWorkState extends State<TypeOfWork> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepTitle(
            title: 'Type of work', subtitle: 'Fill in your bio data correctly'),
        _buildRadioListTile(0),
        _buildRadioListTile(1),
        _buildRadioListTile(2),
      ],
    );
  }

  Widget _buildRadioListTile(int value) {
    return Column(
      children: [
        Container(
          width: 327.w,
          height: 81.h,
          decoration: BoxDecoration(
              color: _selectedValue == value
                  ? AppColor.primaryColor100
                  : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: _selectedValue == value
                      ? AppColor.primaryColor500
                      : AppColor.naturalColor300,
                  width: 1)),
          child: ListTile(
            title: const Text(
              'Senior UX Designer',
              style: TextStyle(fontSize: 16, color: AppColor.naturalColor900),
            ),
            subtitle: const Text(
              'CV.pdf  Portfolio.pdf',
              style: TextStyle(fontSize: 14, color: AppColor.naturalColor500),
            ),
            trailing: Radio<int>(
              activeColor: AppColor.primaryColor500,
              value: value,
              groupValue: _selectedValue,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
              },
            ),
            onTap: () {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 16.h,
        )
      ],
    );
  }
}

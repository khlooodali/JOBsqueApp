import 'package:file_picker/file_picker.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/Screens/applyjop/widgets/dottedboarder.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'view.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  String? fileName;

  String? filePath;

  int? fileSizeKB;

  void uploadCv() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['pdf'],
      type: FileType.custom,
    );

    if (result != null) {
      PlatformFile file = result.files.first;

      print(file.name);
      setState(() {
        filePath = result.files.single.path;
        fileName = result.files.single.name;
        fileSizeKB = (result.files.single.size / 1024).round();
        print('KB');
        print(fileSizeKB);
        print(fileName);
      });
    } else {
      print('canceled');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithoutIcon(
          context: context,
          ontap: () {
            nextTo(context, const ProfileAndSettingsView(), isreplace: true);
          },
          title: 'Portfolio'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add portfolio here',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 16.h,
            ),
            DottedBoarderView(
              ontap: () {
                uploadCv();
              },
            )
          ],
        ),
      ),
    );
  }
}

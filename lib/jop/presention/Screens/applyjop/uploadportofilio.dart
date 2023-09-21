import 'package:file_picker/file_picker.dart';

import 'package:flutter/material.dart';

import '../../widgets/specialtextfiled.dart';
import 'widgets/displayyourpdf.dart';
import 'widgets/dottedboarder.dart';
import 'widgets/steptitle.dart';

class UploadPortfolio extends StatefulWidget {
  const UploadPortfolio({super.key});

  @override
  State<UploadPortfolio> createState() => _UploadPortfolioState();
}

class _UploadPortfolioState extends State<UploadPortfolio> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StepTitle(
            title: 'Upload portfolio',
            subtitle: 'Fill in your bio data correctly'),
        const titleFiled(
          title: 'Upload CV',
        ),
        const SizedBox(
          height: 12,
        ),
        fileName == null
            ? const SizedBox()
            : DisplayPdf(
                filename: fileName!,
                filesize: fileSizeKB!,
              ),
        Text('Other File', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(
          height: 12,
        ),
        DottedBoarderView(
          ontap: () {
            uploadCv();
          },
        )
      ],
    );
  }
}

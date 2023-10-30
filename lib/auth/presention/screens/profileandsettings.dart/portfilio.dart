import 'package:file_picker/file_picker.dart';
import 'package:findjop/core/customwidgets/custombttn/view.dart';
import 'package:findjop/core/customwidgets/helpermethod/navigatetonextpage.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/Screens/applyjop/widgets/displayyourpdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../jop/presention/Screens/applyjop/widgets/dottedboarder.dart';
import '../../../../jop/presention/widgets/appbarwithouticon.dart';
import 'cubit/cubit/profile_cubit.dart';
import 'view.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key, required this.Pathimage});
  final String? Pathimage;
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
      print('canceld');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      ProfileCubit profileCubit = BlocProvider.of(context);
      return Scaffold(
        appBar: AppBarWithoutIcon(
            context: context,
            ontap: () {
              nextTo(context, ProfileAndSettingsView(), isreplace: true);
            },
            title: 'Portfolio'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 36.h),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              const SizedBox(
                height: 12,
              ),
              fileName == null
                  ? const SizedBox()
                  : DisplayPdf(
                      ontap: () {
                        fileName = null;
                        setState(() {});
                      },
                      filename: fileName!,
                      filesize: fileSizeKB!,
                    ),
              const SizedBox(
                height: 400,
              ),
              BlocBuilder<ProfileCubit, ProfileStates>(
                builder: (context, state) {
                  if (state is LoadingProfile) {
                    const Center(
                        child: CircularProgressIndicator(
                      color: AppColor.primaryColor500,
                    ));
                  } else if (state is FailetoUploadProfile) {
                    const Center(
                      child: Text('FailetoUploadCV'),
                    );
                  }
                  return CusttomButton(
                      ontapped: () {
                        profileCubit.uploadProfile(
                            filePath!, widget.Pathimage!);
                      },
                      text: 'upload Cv',
                      isActive: true,
                      width: MediaQuery.of(context).size.width);
                },
              )
            ],
          ),
        ),
      );
    });
  }
}

import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/Screens/applyjop/biodataform.dart';
import 'package:findjop/jop/presention/Screens/applyjop/typeofwork.dart';
import 'package:findjop/jop/presention/Screens/applyjop/uploadportofilio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/customwidgets/custombttn/view.dart';
import '../../widgets/appbarwithouticon.dart';

class ApplyJopView extends StatefulWidget {
  const ApplyJopView({super.key});

  @override
  State<ApplyJopView> createState() => _ApplyJopViewState();
}

class _ApplyJopViewState extends State<ApplyJopView> {
  int currentstep = 0;

  bool isactive = false;

  @override
  Widget build(BuildContext context) {
    contnio() {
      if (currentstep < 2) {
        setState(() {
          currentstep += 1;
        });
      }
    }

    return Scaffold(
      appBar:
          AppBarWithoutIcon(context: context, ontap: () {}, title: 'Apply Jop'),
      body: Padding(
        padding: EdgeInsets.only(top: 34.h, right: 23.w, left: 23.w),
        child: Container(
          color: Colors.white,
          child: Stack(children: [
            Theme(
              data: ThemeData(
                canvasColor: Colors.transparent,
              ),
              child: Stepper(
                  onStepTapped: (int index) {
                    setState(() {
                      currentstep = index;
                    });
                  },
                  onStepCancel: () {
                    if (currentstep > 0) {
                      setState(() {
                        currentstep -= 1;
                      });
                    }
                  },
                  onStepContinue: contnio,
                  controlsBuilder: (context, controller) {
                    return const SizedBox.shrink();
                  },
                  currentStep: currentstep,
                  elevation: 0,
                  type: StepperType.horizontal,
                  steps: [
                    Step(
                      state: currentstep > 0
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: currentstep >= 0,
                      title: const Text(''),
                      content: const BioDataForm(),
                      label: const Text(
                        'Biodata',
                        style: TextStyle(
                            fontSize: 12, color: AppColor.naturalColor900),
                      ),
                    ),
                    Step(
                      state: currentstep > 1
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: currentstep >= 1,
                      title: const Text(''),
                      label: const Text(
                        'type of work',
                        style: TextStyle(
                            fontSize: 12, color: AppColor.naturalColor900),
                      ),
                      content: const TypeOfWork(),
                    ),
                    Step(
                      state: currentstep > 2
                          ? StepState.complete
                          : StepState.indexed,
                      isActive: currentstep >= 2,
                      title: const Text(''),
                      label: const Text(
                        'upload portofilio',
                        style: TextStyle(
                            fontSize: 12, color: AppColor.naturalColor900),
                      ),
                      content: const UploadPortfolio(),
                    )
                  ]),
            ),
            Positioned(
              bottom: 10.h,
              child: CusttomButton(
                ontapped: () {
                  contnio();
                },
                text: currentstep == 2 ? 'Submit' : 'Next',
                isActive: true,
                width: 327.w,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

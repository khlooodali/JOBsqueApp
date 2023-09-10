import 'package:flutter/material.dart';

import 'widgets/steptitle.dart';

class BioDataForm extends StatelessWidget {
  const BioDataForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepTitle(
            title: 'Biodata', subtitle: 'Fill in your bio data correctly'),
      ],
    );
  }
}

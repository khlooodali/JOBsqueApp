import 'package:flutter/material.dart';

import 'widgets/steptitle.dart';

class UploadPortfolio extends StatelessWidget {
  const UploadPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepTitle(
            title: 'Upload portfolio',
            subtitle: 'Fill in your bio data correctly'),
      ],
    );
  }
}

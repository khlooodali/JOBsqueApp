import 'package:flutter/material.dart';

import 'widgets/steptitle.dart';

class TypeOfWork extends StatelessWidget {
  const TypeOfWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StepTitle(
            title: 'Type of work', subtitle: 'Fill in your bio data correctly'),
      ],
    );
  }
}

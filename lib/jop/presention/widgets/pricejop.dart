import 'package:flutter/material.dart';

import '../../../core/theme/appcolors.dart';

class PriceOfJopItem extends StatelessWidget {
  const PriceOfJopItem({super.key, required this.isSuggested});
  final bool isSuggested;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('\$12K-15K',
            style: isSuggested
                ? Theme.of(context).textTheme.bodyMedium
                : const TextStyle(
                    fontSize: 12, color: AppColor.successColor700)),
        Text('/Month',
            style: isSuggested
                ? TextStyle(fontSize: 12, color: Colors.white.withOpacity(.5))
                : const TextStyle(
                    fontSize: 12, color: AppColor.naturalColor500))
      ],
    );
  }
}

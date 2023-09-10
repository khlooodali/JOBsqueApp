import 'package:flutter/material.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        TextButton(
            onPressed: ontap,
            child: Text(
              'View all',
              style: Theme.of(context).textTheme.labelSmall,
            ))
      ],
    );
  }
}

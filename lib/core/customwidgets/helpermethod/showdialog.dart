import 'package:flutter/material.dart';

// class GetDialog extends StatelessWidget {
//   const GetDialog(
//       {super.key,
//       required this.title,
//       required this.content,
//       required this.onpressedok});
//   final String title;
//   final String content;
//   final VoidCallback onpressedok;
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text(title),
//       content: Text(
//         content,
//       ),
//       actions: <Widget>[
//         TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             onPressed: onpressedok,
//             child: const Text('OK')),
//         TextButton(
//           style: TextButton.styleFrom(
//             textStyle: Theme.of(context).textTheme.labelLarge,
//           ),
//           child: const Text('Cancel'),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ],
//     );
//   }
// }

Widget getDialog(
    {required String title,
    required String content,
    required VoidCallback onpressedok,
    required BuildContext context}) {
  return AlertDialog(
    title: Text(title),
    content: Text(
      content,
    ),
    actions: <Widget>[
      TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: onpressedok,
          child: const Text('OK')),
      TextButton(
        style: TextButton.styleFrom(
          textStyle: Theme.of(context).textTheme.labelLarge,
        ),
        child: const Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ],
  );
}

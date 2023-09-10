//listviewof jop item
import 'package:flutter/material.dart';

import '../widgets/jopitem.dart';

class ResentJops extends StatelessWidget {
  const ResentJops({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      //list.length.toDouble(),

      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: ((context, index) {
            return const JopItem();
          })),
    );
  }
}

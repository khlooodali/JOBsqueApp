import 'package:findjop/jop/presention/Screens/jopdetailes/view.dart';
import 'package:findjop/jop/presention/widgets/pricejop.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/appcolors.dart';
import 'jopcategoryitem.dart';
import 'titlejopofitem.dart';

class JopItem extends StatelessWidget {
  const JopItem({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => JopDetailesView(jopindex: index)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            JopItemTitle(
              isSuggest: false,
              index: index,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    JopCategory(
                      isSuggest: false,
                      index: index,
                    ),
                    PriceOfJopItem(
                      isSuggested: false,
                      index: index,
                    ),
                  ],
                )),
            const Divider(
              thickness: 1,
              color: AppColor.naturalColor300,
            )
          ],
        ),
      ),
    );
  }
}

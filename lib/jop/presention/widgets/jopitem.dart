import 'package:findjop/jop/presention/widgets/pricejop.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/appcolors.dart';
import 'jopcategoryitem.dart';
import 'titlejopofitem.dart';

class JopItem extends StatelessWidget {
  const JopItem({
    super.key,
  });
  //final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const JopItemTitle(
            isSuggest: false,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  JopCategory(
                    isSuggest: false,
                  ),
                  const PriceOfJopItem(
                    isSuggested: false,
                  ),
                ],
              )),
          const Divider(
            thickness: 1,
            color: AppColor.naturalColor300,
          )
        ],
      ),
    );
  }
}

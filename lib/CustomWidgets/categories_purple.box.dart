
import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class CategoryPurplewBox extends StatelessWidget {
  const CategoryPurplewBox({
    super.key, required this.image, required this.text, this.color,
  });
  final String image,text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        height: 118,width: 120,
        padding: const EdgeInsets.only(top: 24,right: 24,left: 24),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: TColors.light
        ),
        child:
        Column(
          children: [
            Container(

              padding: const EdgeInsets.all(10),
              height: 50,
              width: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: TColors.grey
              ),
              child:  Column(
                children: [
                  Image(image: AssetImage(image)),
                  // SizedBox(height: 5),
                  // SizedBox(height: 5),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child:  Text(text,style: Theme.of(context).textTheme.labelLarge),
            )
          ],
        )
    );
  }
}
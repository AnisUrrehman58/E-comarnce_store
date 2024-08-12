import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key, required this.image, required this.text,
  });
  final String image,text;
  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height;
    final width  = MediaQuery.of(context).size.width;
    return Container(
        margin:  EdgeInsets.only(right: width * 0.01),
        height: height*0.14,width: width * 0.30,
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
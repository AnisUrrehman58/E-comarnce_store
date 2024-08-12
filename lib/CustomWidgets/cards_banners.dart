import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/size.dart';


class CardBanners extends StatelessWidget {
  const CardBanners({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(top: TSize.defaultSpace,left: TSize.defaultSpace),
      margin: const EdgeInsets.only(right: 15),
      height: height * 0.21,
      width: double.infinity,
      decoration: BoxDecoration(
        color:Colors.purple,
        borderRadius: BorderRadius.circular(25),
      ),
      child:  Stack(
        clipBehavior:Clip.none,
        children: [
          Text('Nike Air Max  270',style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: TColors.light)),
          Positioned(
              top: 27,
              child: Text('Men’s shoes',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: const Color(0xff9CA0AF)))),
          Positioned(
              bottom: 30,
              child: Text('\$290.00',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: TColors.light))),
          const Positioned(
              bottom: -35,
              right: -10, child: Image(image: AssetImage('assets/logos/Shoes.png'))),
        ],
      ),
    );
  }
}

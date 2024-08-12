import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_functions.dart';


class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
              height: THelperFunctions.screenHeight() * 0.7,
              width: THelperFunctions.screenWidth() * 0.8,
              image: AssetImage(image)),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(
            height: TSize.spaceBtwItem,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

import 'package:e_commerce_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../Login/widget/spacing_styling.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
        required this.image,
        required this.title,
        required this.subTitle,
        required this.onPressed
      });
  final String image,title,subTitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: (TSpacingStyle.paddingWithAppbarHeight*2),
          child: Column(
            children: [
              /// Images
              Image(
                  image:  AssetImage(image),
                  width: THelperFunctions.screenWidth() * 0.6),

              const SizedBox(height: TSize.spaceBtwSection),

              /// Title & Subtitle

              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),

              const SizedBox(height: TSize.spaceBtwItem),
              const SizedBox(height: TSize.spaceBtwItem),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSize.spaceBtwSection),

              /// Button
              SizedBox(width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed,style: ElevatedButton.styleFrom(backgroundColor: TColors.purple),
                    child: const Text(TTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}

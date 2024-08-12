import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        const SizedBox(
            width: 25, height: 25
        ),
        const SizedBox(height: TSize.spaceBtwItem),

        Text.rich(TextSpan(children: [
          TextSpan(text: TTexts.iAgreeTo,style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: ' '),
          TextSpan(text: TTexts.privacyPolicy,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? TColors.white:TColors.primary,
            decoration: TextDecoration.underline,
            decorationColor:  dark ? TColors.white:TColors.primary)),
          TextSpan(text: ' '),
          TextSpan(text: TTexts.and,style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: ' '),
          TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
            color: dark ? TColors.white:TColors.primary,
            decoration: TextDecoration.underline,
            decorationColor:  dark ? TColors.white:TColors.primary,
          )),
        ])
        )
      ],
    );
  }
}

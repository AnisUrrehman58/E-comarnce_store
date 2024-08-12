import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/size.dart';


class TSocialButton extends StatelessWidget {
  const TSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(onPressed: () {},
            icon: const Image(
              width: TSize.iconXLg,
              height: TSize.iconXLg,
              image: AssetImage(TImages.google),
            ),),
        ),
        const SizedBox(width:TSize.spaceBtwItem ,),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(onPressed: (){},icon: const Image(
            width: TSize.iconXLg,
            height: TSize.iconXLg,
            image: AssetImage(TImages.facebook),
          ),),
        ),
      ],
    );
  }
}

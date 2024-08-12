import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';
import '../utils/helpers/helper_functions.dart';

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({
    super.key, required this.icon1,  required this.text,

  });

  final IconData icon1;
  final String text;

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Icon(icon1,color: dark ? TColors.light : TColors.dark ),
        SizedBox(width: width * 0.05),
        Text(text,style: Theme.of(context).textTheme.titleMedium),
        Expanded(child: SizedBox(width: width * 0.4)),
        IconButton(onPressed: (){}, icon:  Icon(Icons.keyboard_arrow_right_rounded,color: dark ? TColors.light : TColors.dark,size: 18,)),
      ],
    );
  }
}

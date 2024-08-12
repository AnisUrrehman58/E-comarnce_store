import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class DividerLine extends StatelessWidget {
  const DividerLine({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        margin: const EdgeInsets.only(left: 50,bottom: 10),
        height: 1,
        width: width* 0.8,
        color: TColors.darkGrey.withOpacity(0.2));
  }
}
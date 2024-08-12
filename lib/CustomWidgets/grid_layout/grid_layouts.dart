import 'package:flutter/cupertino.dart';

import '../../../utils/constants/size.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisEvent = 288,
    required this.itemBuilder,
  });
  final int itemCount;
  final double? mainAxisEvent;
  final Widget? Function(BuildContext,int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,

      /// Removing extra Spacing in top
      padding: EdgeInsets.zero,

      /// Scrollable Widget
      physics:  const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 12,
        mainAxisExtent:mainAxisEvent,
      ), itemBuilder: itemBuilder,
    );
  }
}

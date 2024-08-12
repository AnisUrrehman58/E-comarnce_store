import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility..dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../obBoardingController/onboarding.controller.dart';

class OnBoardingDotsNavigation extends StatelessWidget {
  const OnBoardingDotsNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25, // 56+25
        left: TSize.defaultSpace, //24
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light : TColors.dark,
              dotHeight: 10),
        ));
  }
}


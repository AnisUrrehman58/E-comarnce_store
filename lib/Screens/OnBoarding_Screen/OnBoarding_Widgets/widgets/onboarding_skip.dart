import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';
import '../../../../utils/device/device_utility..dart';
import '../../obBoardingController/onboarding.controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('Skip'),
        )
    );
  }
}

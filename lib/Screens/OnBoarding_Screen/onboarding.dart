import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/image_strings.dart';
import '../../utils/constants/text_strings.dart';

import 'OnBoarding_Widgets/widgets/onboarding_dots_navigation.dart';
import 'OnBoarding_Widgets/widgets/onboarding_next_page.dart';
import 'OnBoarding_Widgets/widgets/onboarding_page.dart';
import 'OnBoarding_Widgets/widgets/onboarding_skip.dart';
import 'obBoardingController/onboarding.controller.dart';
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
                image: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
                image: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
                image: TImages.onBoardingImage3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotsNavigation(),

          /// Circular Button

          const OnBoardingNextButton()
        ],
      ),
    );
  }
}





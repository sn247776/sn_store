import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_store/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:sn_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:sn_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:sn_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:sn_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: SnImages.onBoardingImage1,
                title: SnTexts.onBoardingTitle1,
                subTitle: SnTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: SnImages.onBoardingImage2,
                title: SnTexts.onBoardingTitle2,
                subTitle: SnTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: SnImages.onBoardingImage3,
                title: SnTexts.onBoardingTitle3,
                subTitle: SnTexts.onBoardingSubTitle3,
              )
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}



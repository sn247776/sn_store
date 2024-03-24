import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_store/common/widgets/success_screen/success_screen.dart';
import 'package:sn_store/features/authentication/screens/login/login.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(SnImages.deliveredEmailIllustration),
                width: SnHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: SnSizes.spaceBtwSections,
              ),

              /// Title & SubTitle
              Text(
                SnTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SnSizes.spaceBtwItems,
              ),
              Text(
                "support@sn247776.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SnSizes.spaceBtwItems,
              ),
              Text(
                SnTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: SnSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: SnImages.staticSuccessIllustration,
                          title: SnTexts.yourAccountCreatedTitle,
                          subTitle: SnTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(SnTexts.snContinue)),
              ),
              const SizedBox(
                height: SnSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: SnSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(SnTexts.resendEmail)),
              ),
              const SizedBox(
                height: SnSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

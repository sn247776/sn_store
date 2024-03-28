import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sn_store/utils/constants/image_strings.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(SnImages.deliveredEmailIllustration), width: SnHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: SnSizes.spaceBtwSections,),

              /// Title & SubTitle
              Text(SnTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: SnSizes.spaceBtwItems,),

              Text(SnTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: SnSizes.spaceBtwSections,),
              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){}, child: const Text(SnTexts.done)),
              ),
              const SizedBox(height: SnSizes.spaceBtwItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){}, child: const Text(SnTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

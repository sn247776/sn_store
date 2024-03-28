import 'package:flutter/material.dart';
import 'package:sn_store/common/styles/spacing_style.dart';
import 'package:sn_store/utils/constants/sizes.dart';
import 'package:sn_store/utils/constants/text_strings.dart';
import 'package:sn_store/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, this.onPressed});
final String image, title, subTitle;
final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  SingleChildScrollView(
        child: Padding(padding: SnSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(image: AssetImage(image), width: SnHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: SnSizes.spaceBtwSections,),

              /// Title & SubTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: SnSizes.spaceBtwItems,),

              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: SnSizes.spaceBtwSections,),
              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text(SnTexts.snContinue)),
              ),

            ],
          ),

        ),
      ),
    );
  }
}

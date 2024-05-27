import 'package:flutter/material.dart';
import 'package:sn_store/common/products/rating/rating_indicator.dart';
import 'package:sn_store/common/widgets/appbar/appbar.dart';
import 'package:sn_store/features/shop/screens/product_reviews/widgets/overall_rating.dart';
import 'package:sn_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';

import 'package:sn_store/utils/constants/sizes.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const SnAppBar(title: Text('Reviews & Ratings'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SnSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Retings and reviews are verified and are from people who use the same type of device that you use.'),
              const SizedBox(height: SnSizes.spaceBtwItems,),

              /// Overall Product Ratings
              const SnOverallRating(),
              const SnRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: SnSizes.spaceBtwSections,),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}




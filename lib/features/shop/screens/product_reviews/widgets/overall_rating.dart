import 'package:flutter/material.dart';
import 'package:sn_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';


class SnOverallRating extends StatelessWidget {
  const SnOverallRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,),),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              SnRatingProgressIndicator(text: '5', value: 1.0,),
              SnRatingProgressIndicator(text: '4', value: 0.8,),
              SnRatingProgressIndicator(text: '3', value: 0.6,),
              SnRatingProgressIndicator(text: '2', value: 0.4,),
              SnRatingProgressIndicator(text: '1', value: 0.2,),
            ],
          ),
        )
      ],
    );
  }
}
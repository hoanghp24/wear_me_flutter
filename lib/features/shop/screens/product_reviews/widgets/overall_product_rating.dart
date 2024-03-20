import 'package:flutter/material.dart';
import 'package:wear_me_flutter/features/shop/screens/product_reviews/widgets/rating_process_indicator.dart';

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.5', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              RatingProcessIndicator(text: '5', value: 1.0),
              RatingProcessIndicator(text: '4', value: 0.8),
              RatingProcessIndicator(text: '5', value: 0.6),
              RatingProcessIndicator(text: '2', value: 0.4),
              RatingProcessIndicator(text: '1', value: 0.2),
            ],
          ),
        )
      ],
    );
  }
}

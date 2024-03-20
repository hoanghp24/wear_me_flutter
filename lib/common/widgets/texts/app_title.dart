import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      RichText(
          text: TextSpan(
        children: [
          TextSpan(
              text: 'Wear',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: TColors.primary)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(0, -5),
              child: Text('me',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .apply(color: Colors.deepOrange)),
            ),
          ),
          TextSpan(
              text: ' | New Fashion',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: TColors.black)),
        ],
      ))
    ]);
  }
}

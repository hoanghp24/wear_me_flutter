import 'package:flutter/material.dart';
import 'package:wear_me_flutter/utils/constants/colors.dart';
import 'package:wear_me_flutter/utils/device/device_utility.dart';
import 'package:wear_me_flutter/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Material(
      color: Colors.white,
      child: TabBar(
          dividerColor: Colors.transparent,
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.black,
          labelColor: dark ? TColors.black : TColors.primary,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: tabs),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight((TDeviceUtils.getAppBarHeight()));
}

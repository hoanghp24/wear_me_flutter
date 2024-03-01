import 'package:flutter/material.dart';

class BackIconAppBar extends StatelessWidget {
  const BackIconAppBar({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.chevron_left_outlined,
        color: dark ? Colors.white : Colors.black,
      ),
      iconSize: 30,
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}

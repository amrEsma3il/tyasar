






import 'package:flutter/material.dart';

import '../../../config/themes/styles.dart';

class ScreenHeader extends StatelessWidget {
  final String title;
  const ScreenHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Text(title,
              style: TextStyles.textHeaderStyle,
              textAlign: TextAlign.center);
  }
}
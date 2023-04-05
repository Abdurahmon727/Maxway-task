import 'package:flutter/material.dart';
import 'package:maxway_task/core/widgets/w_scale.dart';

import '../../../../assets/colors/colors.dart';

class WGetApp extends StatelessWidget {
  const WGetApp({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return WScaleAnimation(
      onTap: onTap,
      child: Container(
        height: 72,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: white.withOpacity(0.3)),
          borderRadius: const BorderRadius.all(
            Radius.circular(46),
          ),
        ),
        child: Image.asset(image),
      ),
    );
  }
}

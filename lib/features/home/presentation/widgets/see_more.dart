import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';

class WSeeMore extends StatelessWidget {
  const WSeeMore({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(
        Radius.circular(27),
      ),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 13),
        decoration: BoxDecoration(
          border: Border.all(color: mediumGrey),
          borderRadius: const BorderRadius.all(
            Radius.circular(27),
          ),
        ),
        child: const Text(
          'Ko\'proq ko\'rish',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

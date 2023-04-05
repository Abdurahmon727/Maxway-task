import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/images/images.dart';

class WCategory extends StatelessWidget {
  const WCategory({
    Key? key,
    required this.titlImage,
    required this.title,
    required this.bigTitle,
    required this.backgroungImage,
    required this.backgroundColor,
    required this.bigTitleColor,
  }) : super(key: key);

  final String titlImage;
  final String title;
  final Color backgroundColor;
  final Color bigTitleColor;
  final String bigTitle;
  final String backgroungImage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(19)),
        child: Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Container(
                height: 132,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                color: backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                        color: white.withOpacity(0.20),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(19)),
                      ),
                      child: IntrinsicWidth(
                        child: Row(
                          children: [
                            Image.asset(titlImage),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                title,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      bigTitle.toUpperCase(),
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: bigTitleColor,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(backgroungImage),
            ]),
      ),
    );
  }
}

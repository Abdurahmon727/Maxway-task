import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';
import '../../domain/entities/category.dart';

class WCategory extends StatelessWidget {
  const WCategory({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final CategoryEntity entity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(19)),
        child: Stack(
            alignment: Alignment.bottomRight,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Container(
                height: 132,
                width: double.maxFinite,
                padding: const EdgeInsets.all(10),
                color: entity.backgroundColor,
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
                            Image.asset(entity.titleImage),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                entity.title,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      entity.bigTitle.toUpperCase(),
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: entity.bigTitleColor,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(entity.backgroungImage),
            ]),
      ),
    );
  }
}

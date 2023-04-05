import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxway_task/features/home/domain/entities/meal.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/icons/icons.dart';
import '../../../../assets/images/images.dart';
import '../../../../core/app_functions.dart';
import '../../../../core/widgets/w_scale.dart';

class WMeal extends StatelessWidget {
  const WMeal({
    Key? key,
    required this.entity,
  }) : super(key: key);

  final MealEntity entity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: const Color(0xFF979797).withOpacity(0.2)),
          ),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Image.asset(entity.image),
                  Visibility(
                    visible: entity.isHot,
                    child: Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: white.withOpacity(0.25),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 7),
                                blurRadius: 40,
                                color:
                                    const Color(0xFFEE2744).withOpacity(0.35))
                          ]),
                      child: Image.asset(AppImages.fire),
                    ),
                  )
                ],
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          entity.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (entity.nameImage != null)
                          Image.asset(entity.nameImage!)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      entity.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: grey),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      AppFunctions.showPrice(entity.price),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: WScaleAnimation(
            onTap: () {
              //TODO: add to basket
            },
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(13),
              decoration: const BoxDecoration(
                color: yellow,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(AppIcons.plus),
            ),
          ),
        )
      ],
    );
  }
}

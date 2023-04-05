import 'package:flutter/material.dart';

import '../../domain/entities/meal.dart';
import 'meal.dart';
import 'see_more.dart';
import 'title.dart';

class WListOfMeals extends StatelessWidget {
  const WListOfMeals({
    Key? key,
    required this.title,
    required this.onTapSeeMore,
    required this.meals,
  }) : super(key: key);

  final String title;
  final VoidCallback onTapSeeMore;
  final List<MealEntity> meals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WTitle(title: title),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount: meals.length + 1,
            itemBuilder: (_, index) {
              if (index == meals.length) {
                return WSeeMore(
                  onTap: onTapSeeMore,
                );
              }
              return WMeal(entity: meals[index]);
            },
            separatorBuilder: (_, __) => const SizedBox(height: 10),
          ),
        ],
      ),
    );
  }
}

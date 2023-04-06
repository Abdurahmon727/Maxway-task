import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../core/app_functions.dart';
import '../../../../core/widgets/w_scale.dart';
import '../../../home/domain/entities/meal.dart';
import '../bloc/basket_bloc.dart';

class WCheckOutMeal extends StatelessWidget {
  const WCheckOutMeal({
    Key? key,
    required this.entity,
    required this.mealCount,
    required this.index,
  }) : super(key: key);

  final MealEntity entity;
  final int mealCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color(0xFF979797).withOpacity(0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.asset(entity.image),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(entity.name),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () => context.read<BasketBloc>().add(
                            BasketEvent.decrementMealCounter(index: index)),
                        splashRadius: 18,
                        icon: const Icon(Icons.remove)),
                    Text(mealCount.toString()),
                    IconButton(
                        onPressed: () {
                          context.read<BasketBloc>().add(
                              BasketEvent.incrementMealCounter(index: index));
                        },
                        splashRadius: 18,
                        icon: const Icon(Icons.add)),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(AppFunctions.showPrice(entity.price)),
              WScaleAnimation(
                onTap: () {
                  context
                      .read<BasketBloc>()
                      .add(BasketEvent.removeMeal(entity: entity));
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Icon(
                    Icons.close,
                    size: 18,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/domain/entities/meal.dart';

part 'basket_bloc.freezed.dart';
part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc() : super(const _BasketState()) {
    on<_AddMeal>((event, emit) {
      final meals = state.meals;

      if (meals.contains(event.entity)) {
        event.onFail('Ta\'om Basketda allaqachon mavjud');
        return;
      }

      final result = [event.entity, ...meals];
      final newMealCounter = [1, ...state.mealCounter];
      emit(state.copyWith(meals: result, mealCounter: newMealCounter));
    });

    on<_RemoveMeal>((event, emit) {
      final meals = state.meals;
      final mealCounter = state.mealCounter;
      final index = meals.indexOf(event.entity);

      if (index == -1) {
        return;
      }

      final newMeals = [...meals];
      newMeals.removeAt(index);

      final newMealCounter = [...mealCounter];
      newMealCounter.removeAt(index);

      emit(state.copyWith(meals: newMeals, mealCounter: newMealCounter));
    });

    on<_IncrementMealCounter>((event, emit) {
      final newMealCounter = [
        ...state.mealCounter.take(event.index),
        state.mealCounter[event.index] + 1,
        ...state.mealCounter.skip(event.index + 1),
      ];

      emit(state.copyWith(mealCounter: newMealCounter));
    });

    on<_DecrementMealCounter>((event, emit) {
      final index = event.index;
      final mealCounter = state.mealCounter;

      if (index >= mealCounter.length || mealCounter[index] <= 1) {
        return;
      }

      final newMealCounter = [
        ...mealCounter.take(index),
        mealCounter[index] - 1,
        ...mealCounter.skip(index + 1),
      ];

      emit(state.copyWith(mealCounter: newMealCounter));
    });
  }
}

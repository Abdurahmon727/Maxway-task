part of 'basket_bloc.dart';

@freezed
class BasketEvent with _$BasketEvent {
  const factory BasketEvent.addMeal({
    required MealEntity entity,
    required ValueChanged<String> onFail,
  }) = _AddMeal;
  const factory BasketEvent.removeMeal({required MealEntity entity}) =
      _RemoveMeal;
  const factory BasketEvent.incrementMealCounter({required int index}) =
      _IncrementMealCounter;
  const factory BasketEvent.decrementMealCounter({required int index}) =
      _DecrementMealCounter;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealEntity entity, ValueChanged<String> onFail)
        addMeal,
    required TResult Function(MealEntity entity) removeMeal,
    required TResult Function(int index) incrementMealCounter,
    required TResult Function(int index) decrementMealCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult? Function(MealEntity entity)? removeMeal,
    TResult? Function(int index)? incrementMealCounter,
    TResult? Function(int index)? decrementMealCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult Function(MealEntity entity)? removeMeal,
    TResult Function(int index)? incrementMealCounter,
    TResult Function(int index)? decrementMealCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_IncrementMealCounter value) incrementMealCounter,
    required TResult Function(_DecrementMealCounter value) decrementMealCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult? Function(_DecrementMealCounter value)? decrementMealCounter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult Function(_DecrementMealCounter value)? decrementMealCounter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketEventCopyWith<$Res> {
  factory $BasketEventCopyWith(
          BasketEvent value, $Res Function(BasketEvent) then) =
      _$BasketEventCopyWithImpl<$Res, BasketEvent>;
}

/// @nodoc
class _$BasketEventCopyWithImpl<$Res, $Val extends BasketEvent>
    implements $BasketEventCopyWith<$Res> {
  _$BasketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddMealCopyWith<$Res> {
  factory _$$_AddMealCopyWith(
          _$_AddMeal value, $Res Function(_$_AddMeal) then) =
      __$$_AddMealCopyWithImpl<$Res>;
  @useResult
  $Res call({MealEntity entity, ValueChanged<String> onFail});
}

/// @nodoc
class __$$_AddMealCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$_AddMeal>
    implements _$$_AddMealCopyWith<$Res> {
  __$$_AddMealCopyWithImpl(_$_AddMeal _value, $Res Function(_$_AddMeal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? onFail = null,
  }) {
    return _then(_$_AddMeal(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MealEntity,
      onFail: null == onFail
          ? _value.onFail
          : onFail // ignore: cast_nullable_to_non_nullable
              as ValueChanged<String>,
    ));
  }
}

/// @nodoc

class _$_AddMeal implements _AddMeal {
  const _$_AddMeal({required this.entity, required this.onFail});

  @override
  final MealEntity entity;
  @override
  final ValueChanged<String> onFail;

  @override
  String toString() {
    return 'BasketEvent.addMeal(entity: $entity, onFail: $onFail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMeal &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.onFail, onFail) || other.onFail == onFail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, onFail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMealCopyWith<_$_AddMeal> get copyWith =>
      __$$_AddMealCopyWithImpl<_$_AddMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealEntity entity, ValueChanged<String> onFail)
        addMeal,
    required TResult Function(MealEntity entity) removeMeal,
    required TResult Function(int index) incrementMealCounter,
    required TResult Function(int index) decrementMealCounter,
  }) {
    return addMeal(entity, onFail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult? Function(MealEntity entity)? removeMeal,
    TResult? Function(int index)? incrementMealCounter,
    TResult? Function(int index)? decrementMealCounter,
  }) {
    return addMeal?.call(entity, onFail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult Function(MealEntity entity)? removeMeal,
    TResult Function(int index)? incrementMealCounter,
    TResult Function(int index)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(entity, onFail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_IncrementMealCounter value) incrementMealCounter,
    required TResult Function(_DecrementMealCounter value) decrementMealCounter,
  }) {
    return addMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult? Function(_DecrementMealCounter value)? decrementMealCounter,
  }) {
    return addMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult Function(_DecrementMealCounter value)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (addMeal != null) {
      return addMeal(this);
    }
    return orElse();
  }
}

abstract class _AddMeal implements BasketEvent {
  const factory _AddMeal(
      {required final MealEntity entity,
      required final ValueChanged<String> onFail}) = _$_AddMeal;

  MealEntity get entity;
  ValueChanged<String> get onFail;
  @JsonKey(ignore: true)
  _$$_AddMealCopyWith<_$_AddMeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMealCopyWith<$Res> {
  factory _$$_RemoveMealCopyWith(
          _$_RemoveMeal value, $Res Function(_$_RemoveMeal) then) =
      __$$_RemoveMealCopyWithImpl<$Res>;
  @useResult
  $Res call({MealEntity entity});
}

/// @nodoc
class __$$_RemoveMealCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$_RemoveMeal>
    implements _$$_RemoveMealCopyWith<$Res> {
  __$$_RemoveMealCopyWithImpl(
      _$_RemoveMeal _value, $Res Function(_$_RemoveMeal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
  }) {
    return _then(_$_RemoveMeal(
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as MealEntity,
    ));
  }
}

/// @nodoc

class _$_RemoveMeal implements _RemoveMeal {
  const _$_RemoveMeal({required this.entity});

  @override
  final MealEntity entity;

  @override
  String toString() {
    return 'BasketEvent.removeMeal(entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveMeal &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveMealCopyWith<_$_RemoveMeal> get copyWith =>
      __$$_RemoveMealCopyWithImpl<_$_RemoveMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealEntity entity, ValueChanged<String> onFail)
        addMeal,
    required TResult Function(MealEntity entity) removeMeal,
    required TResult Function(int index) incrementMealCounter,
    required TResult Function(int index) decrementMealCounter,
  }) {
    return removeMeal(entity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult? Function(MealEntity entity)? removeMeal,
    TResult? Function(int index)? incrementMealCounter,
    TResult? Function(int index)? decrementMealCounter,
  }) {
    return removeMeal?.call(entity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult Function(MealEntity entity)? removeMeal,
    TResult Function(int index)? incrementMealCounter,
    TResult Function(int index)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (removeMeal != null) {
      return removeMeal(entity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_IncrementMealCounter value) incrementMealCounter,
    required TResult Function(_DecrementMealCounter value) decrementMealCounter,
  }) {
    return removeMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult? Function(_DecrementMealCounter value)? decrementMealCounter,
  }) {
    return removeMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult Function(_DecrementMealCounter value)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (removeMeal != null) {
      return removeMeal(this);
    }
    return orElse();
  }
}

abstract class _RemoveMeal implements BasketEvent {
  const factory _RemoveMeal({required final MealEntity entity}) = _$_RemoveMeal;

  MealEntity get entity;
  @JsonKey(ignore: true)
  _$$_RemoveMealCopyWith<_$_RemoveMeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncrementMealCounterCopyWith<$Res> {
  factory _$$_IncrementMealCounterCopyWith(_$_IncrementMealCounter value,
          $Res Function(_$_IncrementMealCounter) then) =
      __$$_IncrementMealCounterCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_IncrementMealCounterCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$_IncrementMealCounter>
    implements _$$_IncrementMealCounterCopyWith<$Res> {
  __$$_IncrementMealCounterCopyWithImpl(_$_IncrementMealCounter _value,
      $Res Function(_$_IncrementMealCounter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_IncrementMealCounter(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IncrementMealCounter implements _IncrementMealCounter {
  const _$_IncrementMealCounter({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BasketEvent.incrementMealCounter(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncrementMealCounter &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncrementMealCounterCopyWith<_$_IncrementMealCounter> get copyWith =>
      __$$_IncrementMealCounterCopyWithImpl<_$_IncrementMealCounter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealEntity entity, ValueChanged<String> onFail)
        addMeal,
    required TResult Function(MealEntity entity) removeMeal,
    required TResult Function(int index) incrementMealCounter,
    required TResult Function(int index) decrementMealCounter,
  }) {
    return incrementMealCounter(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult? Function(MealEntity entity)? removeMeal,
    TResult? Function(int index)? incrementMealCounter,
    TResult? Function(int index)? decrementMealCounter,
  }) {
    return incrementMealCounter?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult Function(MealEntity entity)? removeMeal,
    TResult Function(int index)? incrementMealCounter,
    TResult Function(int index)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (incrementMealCounter != null) {
      return incrementMealCounter(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_IncrementMealCounter value) incrementMealCounter,
    required TResult Function(_DecrementMealCounter value) decrementMealCounter,
  }) {
    return incrementMealCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult? Function(_DecrementMealCounter value)? decrementMealCounter,
  }) {
    return incrementMealCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult Function(_DecrementMealCounter value)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (incrementMealCounter != null) {
      return incrementMealCounter(this);
    }
    return orElse();
  }
}

abstract class _IncrementMealCounter implements BasketEvent {
  const factory _IncrementMealCounter({required final int index}) =
      _$_IncrementMealCounter;

  int get index;
  @JsonKey(ignore: true)
  _$$_IncrementMealCounterCopyWith<_$_IncrementMealCounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecrementMealCounterCopyWith<$Res> {
  factory _$$_DecrementMealCounterCopyWith(_$_DecrementMealCounter value,
          $Res Function(_$_DecrementMealCounter) then) =
      __$$_DecrementMealCounterCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DecrementMealCounterCopyWithImpl<$Res>
    extends _$BasketEventCopyWithImpl<$Res, _$_DecrementMealCounter>
    implements _$$_DecrementMealCounterCopyWith<$Res> {
  __$$_DecrementMealCounterCopyWithImpl(_$_DecrementMealCounter _value,
      $Res Function(_$_DecrementMealCounter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DecrementMealCounter(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DecrementMealCounter implements _DecrementMealCounter {
  const _$_DecrementMealCounter({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BasketEvent.decrementMealCounter(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecrementMealCounter &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecrementMealCounterCopyWith<_$_DecrementMealCounter> get copyWith =>
      __$$_DecrementMealCounterCopyWithImpl<_$_DecrementMealCounter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MealEntity entity, ValueChanged<String> onFail)
        addMeal,
    required TResult Function(MealEntity entity) removeMeal,
    required TResult Function(int index) incrementMealCounter,
    required TResult Function(int index) decrementMealCounter,
  }) {
    return decrementMealCounter(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult? Function(MealEntity entity)? removeMeal,
    TResult? Function(int index)? incrementMealCounter,
    TResult? Function(int index)? decrementMealCounter,
  }) {
    return decrementMealCounter?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MealEntity entity, ValueChanged<String> onFail)? addMeal,
    TResult Function(MealEntity entity)? removeMeal,
    TResult Function(int index)? incrementMealCounter,
    TResult Function(int index)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (decrementMealCounter != null) {
      return decrementMealCounter(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddMeal value) addMeal,
    required TResult Function(_RemoveMeal value) removeMeal,
    required TResult Function(_IncrementMealCounter value) incrementMealCounter,
    required TResult Function(_DecrementMealCounter value) decrementMealCounter,
  }) {
    return decrementMealCounter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddMeal value)? addMeal,
    TResult? Function(_RemoveMeal value)? removeMeal,
    TResult? Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult? Function(_DecrementMealCounter value)? decrementMealCounter,
  }) {
    return decrementMealCounter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddMeal value)? addMeal,
    TResult Function(_RemoveMeal value)? removeMeal,
    TResult Function(_IncrementMealCounter value)? incrementMealCounter,
    TResult Function(_DecrementMealCounter value)? decrementMealCounter,
    required TResult orElse(),
  }) {
    if (decrementMealCounter != null) {
      return decrementMealCounter(this);
    }
    return orElse();
  }
}

abstract class _DecrementMealCounter implements BasketEvent {
  const factory _DecrementMealCounter({required final int index}) =
      _$_DecrementMealCounter;

  int get index;
  @JsonKey(ignore: true)
  _$$_DecrementMealCounterCopyWith<_$_DecrementMealCounter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BasketState {
  List<MealEntity> get meals => throw _privateConstructorUsedError;
  List<int> get mealCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call({List<MealEntity> meals, List<int> mealCounter});
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? mealCounter = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>,
      mealCounter: null == mealCounter
          ? _value.mealCounter
          : mealCounter // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasketStateCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$_BasketStateCopyWith(
          _$_BasketState value, $Res Function(_$_BasketState) then) =
      __$$_BasketStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MealEntity> meals, List<int> mealCounter});
}

/// @nodoc
class __$$_BasketStateCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$_BasketState>
    implements _$$_BasketStateCopyWith<$Res> {
  __$$_BasketStateCopyWithImpl(
      _$_BasketState _value, $Res Function(_$_BasketState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? mealCounter = null,
  }) {
    return _then(_$_BasketState(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<MealEntity>,
      mealCounter: null == mealCounter
          ? _value._mealCounter
          : mealCounter // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_BasketState implements _BasketState {
  const _$_BasketState(
      {final List<MealEntity> meals = const [],
      final List<int> mealCounter = const []})
      : _meals = meals,
        _mealCounter = mealCounter;

  final List<MealEntity> _meals;
  @override
  @JsonKey()
  List<MealEntity> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  final List<int> _mealCounter;
  @override
  @JsonKey()
  List<int> get mealCounter {
    if (_mealCounter is EqualUnmodifiableListView) return _mealCounter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealCounter);
  }

  @override
  String toString() {
    return 'BasketState(meals: $meals, mealCounter: $mealCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasketState &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            const DeepCollectionEquality()
                .equals(other._mealCounter, _mealCounter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_meals),
      const DeepCollectionEquality().hash(_mealCounter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      __$$_BasketStateCopyWithImpl<_$_BasketState>(this, _$identity);
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {final List<MealEntity> meals,
      final List<int> mealCounter}) = _$_BasketState;

  @override
  List<MealEntity> get meals;
  @override
  List<int> get mealCounter;
  @override
  @JsonKey(ignore: true)
  _$$_BasketStateCopyWith<_$_BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

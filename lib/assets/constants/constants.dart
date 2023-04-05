import 'package:maxway_task/features/home/domain/entities/category.dart';
import 'package:maxway_task/features/home/domain/entities/meal.dart';

import '../colors/colors.dart';
import '../images/images.dart';

const categories = [
  CategoryEntity(
    backgroundColor: yellow,
    backgroungImage: AppImages.pizzaBackground,
    bigTitle: 'Pit\n -sa',
    bigTitleColor: orange,
    title: 'data',
    titleImage: AppImages.fire,
  ),
  CategoryEntity(
    backgroundColor: purple,
    backgroungImage: AppImages.sandwichBackground,
    bigTitle: '  kom\n-bo',
    bigTitleColor: rose,
    title: 'data',
    titleImage: AppImages.rocket,
  ),
];

const pitsas = [
  MealEntity(
    isHot: true,
    image: AppImages.gavaya,
    name: 'Gavaya',
    nameImage: AppImages.cheese,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 15000,
  ),
  MealEntity(
    isHot: true,
    image: AppImages.gavaya,
    name: 'Gavaya',
    nameImage: AppImages.cheese,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 15000,
  ),
];

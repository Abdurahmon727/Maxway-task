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
    title: 'Yangi',
    titleImage: AppImages.fire,
  ),
  CategoryEntity(
    backgroundColor: purple,
    backgroungImage: AppImages.sandwichBackground,
    bigTitle: '  kom\n-bo',
    bigTitleColor: rose,
    title: 'kop sotilgan',
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
    image: AppImages.mexica,
    name: 'Mexica',
    nameImage: AppImages.pepper,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 78000,
  ),
  MealEntity(
    isHot: false,
    image: AppImages.achchiko,
    name: 'Hot Achchiko',
    nameImage: AppImages.plant,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 343000,
  ),
];

const burgers = [
  MealEntity(
    isHot: true,
    image: AppImages.cheesburger,
    name: 'Cheeseburger',
    nameImage: AppImages.cheese,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 23500,
  ),
  MealEntity(
    isHot: true,
    image: AppImages.cheesburger,
    name: 'Chiliburger',
    nameImage: AppImages.pepper,
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 29000,
  ),
  MealEntity(
    isHot: false,
    image: AppImages.cheesburger,
    name: 'Hamburger',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 23000,
  ),
];

const kombos = [
  MealEntity(
    image: AppImages.sandwich,
    name: 'Kombo-1',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 23000,
  ),
  MealEntity(
    image: AppImages.kombo,
    name: 'Kombo-2',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 25000,
  ),
  MealEntity(
    image: AppImages.sandwich,
    name: 'Kombo-3',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 30000,
  ),
];

const dirinks = [
  MealEntity(
    image: AppImages.sprite,
    name: 'Sprite 1L',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 6000,
  ),
  MealEntity(
    image: AppImages.cola,
    name: 'Cola 1.5L',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 9000,
  ),
  MealEntity(
    image: AppImages.fanta,
    name: 'Fanta 1L',
    description:
        'Горячая закуска с митболамииз говядины, томатами,моцареллой и соусом чипотле',
    price: 6000,
  ),
];

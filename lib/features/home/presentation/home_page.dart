import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/constants.dart';
import '../../../assets/icons/icons.dart';
import '../../../assets/images/images.dart';
import '../../../core/pages/w_scaffold.dart';
import '../../../core/widgets/w_scale.dart';
import '../../basket/presentation/basket_page.dart';
import '../../basket/presentation/bloc/basket_bloc.dart';
import 'widgets/category.dart';
import 'widgets/info.dart';
import 'widgets/list_of_meals.dart';
import 'widgets/share_app.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController mealController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return WScaffold(
      appBar: AppBar(
        backgroundColor: white,
        titleSpacing: 0,
        elevation: 1,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImages.maxWay),
              const Text(
                'Menyu',
                style: TextStyle(
                  fontSize: 12,
                  color: black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Text('Bolalar uchun',
                  style: TextStyle(
                    fontSize: 12,
                    color: mediumGrey,
                    fontWeight: FontWeight.w400,
                  )),
              const Text(
                'Filiallar',
                style: TextStyle(
                  fontSize: 12,
                  color: mediumGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              WScaleAnimation(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BasketPage(),
                      ));
                },
                child: SizedBox(
                  height: 26,
                  width: 27,
                  child: BlocBuilder<BasketBloc, BasketState>(
                    builder: (context, state) {
                      return Stack(alignment: Alignment.bottomLeft, children: [
                        SvgPicture.asset(AppIcons.basket),
                        Visibility(
                          visible: state.meals.isNotEmpty,
                          child: Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 16,
                                padding: const EdgeInsets.only(
                                    bottom: 1, left: 2, right: 2),
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                  border: Border.all(width: 3, color: purple),
                                ),
                                child: Text(
                                  state.meals.length.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 8,
                                  ),
                                ),
                              )),
                        )
                      ]);
                    },
                  ),
                ),
              ),
              WScaleAnimation(
                  onTap: () {
                    //TODO: open drawer
                  },
                  child: SvgPicture.asset(AppIcons.drawer)),
            ],
          ),
        ),
      ),
      body: ListView(controller: mealController, shrinkWrap: true, children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              AppImages.burger,
            ),
            const Text(
              'Siz izlagan mazzali ta’mlar',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              WCategory(entity: categories[0]),
              const SizedBox(width: 10),
              WCategory(entity: categories[1])
            ],
          ),
        ),
        const SizedBox(height: 35),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WScaleAnimation(
                onTap: () {
                  //TODO: open settings
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: lightGrey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      )),
                  alignment: Alignment.center,
                  child: SvgPicture.asset(AppIcons.settings),
                ),
              ),
              TextButton(
                  onPressed: () {
                    mealController.animateTo(700,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  },
                  child: const Text(
                    'Pitsa',
                    style: TextStyle(color: black),
                  )),
              TextButton(
                  onPressed: () {
                    mealController.animateTo(1450,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  },
                  child: const Text(
                    'Burger',
                    style: TextStyle(color: black),
                  )),
              TextButton(
                  onPressed: () {
                    mealController.animateTo(2150,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  },
                  child: const Text(
                    'Kombo',
                    style: TextStyle(color: black),
                  )),
              WScaleAnimation(
                onTap: () {
                  mealController.animateTo(700,
                      duration: const Duration(seconds: 1), curve: Curves.ease);
                },
                child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: yellow,
                    ),
                    child: const Text('Barchasi')),
              ),
            ],
          ),
        ),
        WListOfMeals(
          title: 'Pitsa',
          meals: pitsas,
          onTapSeeMore: () {
            //Todo:
          },
        ),
        WListOfMeals(
          title: 'Burger',
          onTapSeeMore: () {
            //TODO
          },
          meals: burgers,
        ),
        WListOfMeals(
          title: 'Kombo',
          onTapSeeMore: () {
            //TODO
          },
          meals: kombos,
        ),
        WListOfMeals(
          title: 'Drink',
          onTapSeeMore: () {
            //TODO
          },
          meals: dirinks,
        ),
        const WShareApp(),
        const SizedBox(height: 40),
        const WInfo(),
      ]),
    );
  }
}

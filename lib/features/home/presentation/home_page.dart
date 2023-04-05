import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxway_task/features/home/presentation/widgets/get_app.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/constants.dart';
import '../../../assets/icons/icons.dart';
import '../../../assets/images/images.dart';
import '../../../core/widgets/w_scale.dart';
import 'widgets/category.dart';
import 'widgets/list_of_meals.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    color: grey,
                    fontWeight: FontWeight.w400,
                  )),
              const Text(
                'Filiallar',
                style: TextStyle(
                  fontSize: 12,
                  color: grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              WScaleAnimation(
                onTap: () {
                  //TODO: navigate to basket page
                },
                child: SizedBox(
                  height: 26,
                  width: 27,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      SvgPicture.asset(AppIcons.basket),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              color: yellow,
                              shape: BoxShape.circle,
                              border: Border.all(width: 3, color: purple),
                            ),
                            child: const Text(
                              '3',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ))
                    ],
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
      body: ListView(children: [
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
              const Text('Pitsa'),
              const Text('Burger'),
              const Text('Kombo'),
              const Text('Barchasi'),
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
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 150),
              height: 600,
              width: double.infinity,
              color: purple,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  const Text(
                    'Mobil ilovamiz orqali buyurtma berish yanada osonroq',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 40),
                  WGetApp(
                    image: AppImages.googlePlay,
                    onTap: () {
                      //TODO: open play store
                    },
                  ),
                  const SizedBox(height: 12),
                  WGetApp(
                      image: AppImages.appStore,
                      onTap: () {
                        //TODO: open app store
                      }),
                  const SizedBox(height: 25),
                ]),
              ),
            ),
            Positioned(top: 170, child: Image.asset(AppImages.yellowNike)),
            Positioned(top: 5, right: 5, child: Image.asset(AppImages.phone)),
          ],
        )
      ]),
    );
  }
}

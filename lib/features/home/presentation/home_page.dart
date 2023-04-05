import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/constants.dart';
import '../../../assets/icons/icons.dart';
import '../../../assets/images/images.dart';
import '../../../core/widgets/w_scale.dart';
import 'widgets/category.dart';
import 'widgets/meal.dart';
import 'widgets/title.dart';

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
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
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
            Row(
              children: [
                WCategory(entity: categories[0]),
                const SizedBox(width: 10),
                WCategory(entity: categories[1])
              ],
            ),
            const SizedBox(height: 35),
            Row(
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
            const WTitle(title: 'Pitsa'),
            WMeal(),
          ]),
    );
  }
}

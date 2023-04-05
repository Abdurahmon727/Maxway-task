import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maxway_task/assets/colors/colors.dart';
import 'package:maxway_task/core/widgets/w_scale.dart';
import 'package:maxway_task/features/home/presentation/widgets/category.dart';
import '../../../assets/icons/icons.dart';
import '../../../assets/images/images.dart';

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
              SvgPicture.asset(AppImages.maxWay),
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
                  //TODO:
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
                    //TODO:
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
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Row(
              children: const [
                WCategory(
                  backgroundColor: yellow,
                  backgroungImage: AppImages.pizzaBackground,
                  bigTitle: 'Pit\n -sa',
                  bigTitleColor: orange,
                  title: 'data',
                  titlImage: AppImages.fire,
                ),
                SizedBox(width: 10),
                WCategory(
                  backgroundColor: purple,
                  backgroungImage: AppImages.sandwichBackground,
                  bigTitle: '  kom\n-bo',
                  bigTitleColor: rose,
                  title: 'data',
                  titlImage: AppImages.rocket,
                )
              ],
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WScaleAnimation(
                  onTap: () {
                    //TODO
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
                Text('Pitsa'),
                Text('Burger'),
                Text('Kombo'),
                Text('Barchasi'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 20),
              child: Text(
                'Pitsa',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 170,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                border:
                    Border.all(color: const Color(0xFF979797).withOpacity(0.2)),
              ),
              child: Row(
                children: [
                  Image.asset(AppImages.gavaya),
                ],
              ),
            )
          ]),
    );
  }
}

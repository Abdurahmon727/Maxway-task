import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/images/images.dart';
import 'get_app.dart';

class WShareApp extends StatelessWidget {
  const WShareApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 150),
          height: 600,
          width: double.infinity,
          color: purple,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
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
    );
  }
}

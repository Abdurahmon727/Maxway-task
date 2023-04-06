import 'package:flutter/material.dart';

import '../../../../assets/colors/colors.dart';
import '../../../../assets/images/images.dart';

class WInfo extends StatelessWidget {
  const WInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionPanelList(
          elevation: 0,
          children: [
            ExpansionPanel(
                headerBuilder: (context, isExpanded) => const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Asosiy',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                body: const SizedBox()),
            ExpansionPanel(
              headerBuilder: (context, isExpanded) => const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Qo\'shimcha',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              body: const SizedBox(),
            ),
          ],
        ),
        const SizedBox(height: 30),
        const Text(
          '(+998 71) 200-54-00',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          '100011, Toshkent sh. Shayxontohur tumani, Zarqaynar ko’chasi, 3B-uy',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: mediumGrey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(AppImages.youtube),
            Image.asset(AppImages.facebook),
            Image.asset(AppImages.instagram),
            Image.asset(AppImages.telegram),
            Image.asset(AppImages.tiktok),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Divider(),
        ),
        Image.asset(AppImages.maxWay2020),
        const SizedBox(height: 30),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../assets/colors/colors.dart';
import '../../../core/app_functions.dart';
import '../../../core/service/service_locator.dart';
import '../../../core/widgets/w_button.dart';
import 'bloc/basket_bloc.dart';
import 'widgets/check_out_meal.dart';

class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: serviceLocator<BasketBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: yellow,
          elevation: 0,
          centerTitle: true,
          title: const Text('Checkout'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<BasketBloc, BasketState>(
              builder: (context, state) {
                return Expanded(
                  child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    itemBuilder: (_, index) => WCheckOutMeal(
                      index: index,
                      entity: state.meals[index],
                      mealCount: state.mealCounter[index],
                    ),
                    itemCount: state.meals.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                  ),
                );
              },
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(),
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total:'),
                          BlocBuilder<BasketBloc, BasketState>(
                            builder: (context, state) {
                              return Text(AppFunctions.calculateSumma(
                                  state.meals, state.mealCounter));
                            },
                          ),
                        ],
                      ),
                      WButton(
                        height: 50,
                        borderRadius: 30,
                        child: Text('Checkout'),
                        onTap: () {
                          //TODO: payment
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

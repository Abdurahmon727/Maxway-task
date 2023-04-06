import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

import 'core/bloc/show_pop_up/show_pop_up_bloc.dart';
import 'core/service/service_locator.dart';
import 'features/basket/presentation/bloc/basket_bloc.dart';
import 'features/home/presentation/home_page.dart';

void main() {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaxWay());
}

class MaxWay extends StatelessWidget {
  const MaxWay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowPopUpBloc(),
      child: OverlaySupport.global(
        child: MaterialApp(
          title: 'MaxWay',
          theme: ThemeData(
            fontFamily: 'Inter',
            primarySwatch: Colors.blue,
          ),
          home: BlocProvider(
            create: (context) => serviceLocator<BasketBloc>(),
            child: const HomePage(),
          ),
        ),
      ),
    );
  }
}

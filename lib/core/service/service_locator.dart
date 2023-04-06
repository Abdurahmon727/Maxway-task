import 'package:get_it/get_it.dart';

import '../../features/basket/presentation/bloc/basket_bloc.dart';

final serviceLocator = GetIt.instance;

void setupLocator() {
  serviceLocator.registerLazySingleton(() => BasketBloc());
}


import 'package:banktestapp/futures/data/data_source/local/shared_preference_manager.dart';
import 'package:banktestapp/futures/data/repository/car_repository_impl.dart';
import 'package:banktestapp/futures/domain/repository/dropdown_repository.dart';
import 'package:banktestapp/futures/presentation/bloc/car_bloc/car_bloc.dart';
import 'package:get_it/get_it.dart';

import 'futures/domain/usecases/delete_car_usecase.dart';
import 'futures/domain/usecases/get_car_usecase.dart';
import 'futures/domain/usecases/save_car_usecase.dart';


GetIt locator = GetIt.instance;

setup() {
  locator.registerSingleton<SharedPreferenceManager>(SharedPreferenceManager());

  locator.registerSingleton<CarRepository>(CarRepositoryImpl(locator()));

  locator.registerSingleton<SaveCarUseCase>(
      SaveCarUseCase(locator()));
  locator.registerSingleton<GetCarUsecase>(
      GetCarUsecase(locator()));
  locator.registerSingleton<DeleteCarUseCase>(
      DeleteCarUseCase(locator()));
  locator.registerSingleton<CarBloc>(CarBloc(locator(),locator(),locator()));

}

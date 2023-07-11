
import 'package:get_it/get_it.dart';

import 'futures/hello_future/data/data_source/local/shared_preference_manager.dart';
import 'futures/hello_future/data/repository/car_repository_impl.dart';
import 'futures/hello_future/domain/repository/dropdown_repository.dart';
import 'futures/hello_future/domain/usecases/delete_car_usecase.dart';
import 'futures/hello_future/domain/usecases/get_car_usecase.dart';
import 'futures/hello_future/domain/usecases/save_car_usecase.dart';
import 'futures/hello_future/presentation/bloc/car_bloc/car_bloc.dart';


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

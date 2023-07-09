
import '../../domain/repository/dropdown_repository.dart';
import '../data_source/local/shared_preference_manager.dart';

class CarRepositoryImpl extends CarRepository {
  final SharedPreferenceManager sharedPreferenceManager;

  CarRepositoryImpl(this.sharedPreferenceManager);

  @override
  saveCar(String message,String description) {
    return sharedPreferenceManager.saveCarDetails(message,description);
  }

  @override
  getCar() {
    return sharedPreferenceManager.getCarDetails();
  }

  @override
  deleteCar() {
    return sharedPreferenceManager.deleteCarDetails();
  }
}


import '../repository/dropdown_repository.dart';

class GetCarUsecase {
  final CarRepository carRepository;

  GetCarUsecase(this.carRepository);

  Future<List<String?>> call() async {
    return await carRepository.getCar();
  }
}

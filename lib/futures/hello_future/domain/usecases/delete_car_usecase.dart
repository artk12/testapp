
import '../repository/dropdown_repository.dart';

class DeleteCarUseCase {
  final CarRepository carRepository;

  DeleteCarUseCase(this.carRepository);

  call() {
    carRepository.deleteCar();
  }
}

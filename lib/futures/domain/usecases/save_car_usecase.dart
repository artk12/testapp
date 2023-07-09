
import '../repository/dropdown_repository.dart';

class SaveCarUseCase {
  final CarRepository helloRepository;

  SaveCarUseCase(this.helloRepository);

  call(String message,String description) {
    helloRepository.saveCar(message,description);
  }
}

part of 'car_bloc.dart';

@immutable
abstract class CarState {}

class CarInitialState extends CarState {}

class SavedCarData extends CarState {
  final String car;
  final String description;
  SavedCarData(this.car,this.description);
}

class GetCarData extends CarState {
  final String car;
  final String description;
  GetCarData(this.car,this.description);
}

class DeleteCarData extends CarState {}

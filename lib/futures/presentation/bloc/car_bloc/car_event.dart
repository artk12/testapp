part of 'car_bloc.dart';

@immutable
abstract class CarEvent {}

class SaveCarDetailEvent extends CarEvent {
  final String data;
  final String description;
  SaveCarDetailEvent(this.data, this.description);
}

class GetCarDetailEvent extends CarEvent {}

class DeleteCarDataEvent extends CarEvent {}

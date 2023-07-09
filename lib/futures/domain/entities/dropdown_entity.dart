import 'package:equatable/equatable.dart';

class CarEntity extends Equatable {
  final String? message;
  final String? description;
  const CarEntity({this.message,this.description});

  @override
  List<Object> get props => [];
}

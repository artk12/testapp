import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../domain/usecases/delete_car_usecase.dart';
import '../../../domain/usecases/get_car_usecase.dart';
import '../../../domain/usecases/save_car_usecase.dart';

part 'car_event.dart';
part 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final SaveCarUseCase saveCarUseCase;
  final GetCarUsecase getCarUseCase;
  final DeleteCarUseCase deleteCarUseCase;
  CarBloc(this.saveCarUseCase, this.getCarUseCase,this.deleteCarUseCase) : super(CarInitialState()) {
    on<CarEvent>((event, emit) async{
      if (event is SaveCarDetailEvent){
        String car = event.data;
        String description = event.description;
        saveCarUseCase.call(car, description);
        emit(SavedCarData(car, description));
      }else if(event is DeleteCarDataEvent){
        deleteCarUseCase.call();
        emit(DeleteCarData());
      }else if (event is GetCarDetailEvent){
        var detail = await getCarUseCase();
        emit(GetCarData(detail[0]??'', detail[1]??''));
      }
    });
  }
}

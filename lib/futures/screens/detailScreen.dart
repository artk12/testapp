
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../presentation/bloc/car_bloc/car_bloc.dart';

String selectedValue = 'ب';
TextEditingController hellomessage = new TextEditingController();

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dropdownBloc = context.read<CarBloc>();
    TextEditingController descriptionController = TextEditingController();
    context.read<CarBloc>().add(GetCarDetailEvent());

    return Scaffold(
      appBar: AppBar(title: const Text('description'),leading: IconButton(onPressed: (){
        context.go('/');
      },icon: const Icon(Icons.arrow_back_ios),),),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              BlocProvider<CarBloc>.value(
                value: dropdownBloc,
                child: BlocBuilder<CarBloc, CarState>(
                  builder: (context, state) {
                    if (state is CarInitialState) {
                      return const CircularProgressIndicator();
                    }else if(state is DeleteCarData){
                      return const Center(child: Text('Delete competed !'),);
                    } else if (state is GetCarData) {
                      String car = state.car;
                      String des = state.description;
                      descriptionController.text = des;
                      return SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text(car),
                              const SizedBox(height: 50,),
                              TextField(
                                readOnly: true,
                                controller: descriptionController,
                                decoration: const InputDecoration(
                                  hintText: 'description',
                                  border: OutlineInputBorder()
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                context.read<CarBloc>().add(DeleteCarDataEvent());
              }, child: const Text('clear'))
            ],
          ),
        ),
      ),
    );
  }
}

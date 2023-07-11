
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../presentation/bloc/car_bloc/car_bloc.dart';
import '../presentation/cubit/dropdown_controller/dropdown_controller_cubit.dart';


class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController = TextEditingController();
    DropdownControllerCubit dropdownControllerCubit = DropdownControllerCubit(['BMW','Benz','Ferrari'], 'BMW');

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      BlocBuilder(
                        bloc: dropdownControllerCubit,
                        builder: (context, DropdownControllerState state) {
                          return DropdownButtonFormField<String>(
                            value: state.selected,
                            items: state.options.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                            onChanged: (String? selectedOption) {
                              dropdownControllerCubit.updateDropdown(selectedOption!);
                            },
                            decoration: const InputDecoration(
                              labelText: 'Select a car',
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                            hintText: 'description',
                            border: OutlineInputBorder()),
                      ),
                      const SizedBox(height: 50,),
                      ElevatedButton(
                        onPressed: () {
                          if(descriptionController.text.isNotEmpty){
                            String car = dropdownControllerCubit.state.selected;
                            context.read<CarBloc>().add(SaveCarDetailEvent(car, descriptionController.text));
                            // Future.delayed(Duration(seconds: 1)).whenComplete((){
                            context.go('/details');
                            // });
                          }
                        },
                        child: const Text('show details'),
                      ),
                    ],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dropdown_controller_state.dart';

class DropdownControllerCubit extends Cubit<DropdownControllerState> {
  DropdownControllerCubit(List<String> options,String selected) : super(DropdownControllerState(options: options,selected: selected));

  void updateDropdown(String selected) {
    emit(DropdownControllerState(options: state.options, selected: selected));
  }
}

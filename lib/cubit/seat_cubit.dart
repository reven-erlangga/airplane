import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void selectSeat(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else {
      state.remove(id);
    }

    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);

    if (index == -1) return false;

    return true;
  }
}

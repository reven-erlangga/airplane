import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_state.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super((0));

  void setPage(int newPage) {
    emit(newPage);
  }
}

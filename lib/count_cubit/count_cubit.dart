import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountInitial());
  int son = 0;

  void numberChange() {
    son = son + 1;
    emit(NumberChange(son));
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_state.dart';

class NumberCubit extends Cubit<NumberState> {
  NumberCubit() : super(NumberInitial());
  int number = 0;

  void qoshish() {
    number = number + 1;
    emit(NumberQoshish(number));
  }

  void ayrish() {
    number = number - 1;
    emit(NumberAyrish(number));
  }
}

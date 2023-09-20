part of 'number_cubit.dart';

@immutable
abstract class NumberState {}

class NumberInitial extends NumberState {}

class NumberQoshish extends NumberState {
  final int number;

  NumberQoshish(this.number);
}

class NumberAyrish extends NumberState {
  final int number;

  NumberAyrish(this.number);
}

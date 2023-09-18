part of 'count_cubit.dart';

@immutable
abstract class CountState {}

class CountInitial extends CountState {}

class NumberChange extends CountState {
  final int number;

  NumberChange(this.number);
}

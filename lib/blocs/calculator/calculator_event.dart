part of 'calculator_bloc.dart';

abstract class CalculatorEvent extends Equatable {
  const CalculatorEvent();

  @override
  List<Object> get props => [];
}

class ResetAll extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;

  const AddNumber({required this.number});
}

class AddDecimalPoint extends CalculatorEvent {}

class SelectOperation extends CalculatorEvent {
  final Operation operation;

  const SelectOperation({required this.operation});
}

class DeleteLastEntry extends CalculatorEvent {}

class CalculateResult extends CalculatorEvent {}

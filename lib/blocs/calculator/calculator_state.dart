part of 'calculator_bloc.dart';

enum Operation { none, add, sub, multi, divi }

class CalculatorState extends Equatable {
  final String firstNumber;
  final String secondNumber;
  final Operation operation;
  final String result;

  const CalculatorState({
    this.firstNumber = ' ',
    this.secondNumber = ' ',
    this.operation = Operation.none,
    this.result = '0',
  });

  CalculatorState copyWith({
    String? firstNumber,
    String? secondNumber,
    Operation? operation,
    String? result,
  }) =>
      CalculatorState(
        firstNumber: firstNumber ?? this.firstNumber,
        secondNumber: secondNumber ?? this.secondNumber,
        operation: operation ?? this.operation,
        result: result ?? this.result,
      );

  String getOperationValue() {
    switch (operation) {
      case Operation.add:
        return '+';
      case Operation.sub:
        return '-';
      case Operation.multi:
        return 'x';
      case Operation.divi:
        return '/';
      default:
        return 'none';
    }
  }

  @override
  List<Object> get props => [firstNumber, secondNumber, operation, result];
}

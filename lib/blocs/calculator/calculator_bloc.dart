import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculatorState()) {
    on<ResetAll>((event, emit) {
      emit(state.copyWith(
        firstNumber: ' ',
        secondNumber: ' ',
        operation: Operation.none,
        result: '0',
      ));
    });

    on<AddNumber>((event, emit) {
      if (state.result == '0') {
        emit(state.copyWith(result: event.number));
        return;
      }
      emit(state.copyWith(result: state.result + event.number));
    });

    on<AddDecimalPoint>((event, emit) {
      if (state.result.contains('.')) {
        return;
      }

      if (state.result == '0') {
        emit(state.copyWith(result: '0.'));
      } else {
        emit(state.copyWith(result: '${state.result}.'));
      }
    });

    on<SelectOperation>((event, emit) {
      emit(state.copyWith(
        operation: event.operation,
        firstNumber: state.result,
        result: '0',
        secondNumber: ' ',
      ));
    });

    on<CalculateResult>((event, emit) {
      double firstNumber = double.parse(state.firstNumber);
      double secondNumber = double.parse(state.result);

      switch (state.operation) {
        case Operation.add:
          emit(state.copyWith(
              secondNumber: state.result,
              result: '${firstNumber + secondNumber}'));
          break;
        case Operation.sub:
          emit(state.copyWith(
              secondNumber: state.result,
              result: '${firstNumber - secondNumber}'));
          break;
        case Operation.multi:
          emit(state.copyWith(
              secondNumber: state.result,
              result: '${firstNumber * secondNumber}'));
          break;
        case Operation.divi:
          emit(state.copyWith(
              secondNumber: state.result,
              result: '${firstNumber / secondNumber}'));
          break;
        default:
      }

      if (state.result.endsWith('.0')) {
        emit(state.copyWith(
            result: state.result.substring(0, state.result.length - 2)));
      }
    });

    on<DeleteLastEntry>((event, emit) {
      if (state.result.replaceAll('-', '').length > 1) {
        emit(state.copyWith(
            result: state.result.substring(0, state.result.length - 1)));
      } else {
        emit(state.copyWith(result: '0'));
      }
    });
  }
}

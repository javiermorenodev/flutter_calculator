import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<ChangePrimary>(
        (event, emit) => emit(state.copyWith(isPrimary: !state.isPrimary)));

    on<ChangeTheme>((event, emit) => emit(state.copyWith(dark: !state.dark)));
  }
}

part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final bool isPrimary;
  final bool dark;

  const ThemeState({
    this.isPrimary = true,
    this.dark = true,
  });

  ThemeState copyWith({
    bool? isPrimary,
    bool? dark,
  }) =>
      ThemeState(
        isPrimary: isPrimary ?? this.isPrimary,
        dark: dark ?? this.dark,
      );

  @override
  List<Object> get props => [isPrimary, dark];
}

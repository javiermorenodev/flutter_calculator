import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';
import 'package:flutter_calculator/presentation/screens/calculator/widgets/primary.dart';
import 'package:flutter_calculator/presentation/screens/calculator/widgets/secondary.dart';
import 'package:flutter_calculator/presentation/widgets/appbar.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: AppBarWidget(),
          ),
          body: GestureDetector(
            onHorizontalDragEnd: (details) {
              context.read<ThemeBloc>().add(ChangePrimary());
            },
            child: state.isPrimary
                ? const PrimaryWidget()
                : const SecondaryWidget(),
          ),
        );
      },
    );
  }
}

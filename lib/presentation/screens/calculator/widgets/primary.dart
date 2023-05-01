import 'package:flutter/material.dart';
import 'package:flutter_calculator/presentation/widgets/widgets.dart';

class PrimaryWidget extends StatelessWidget {
  const PrimaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        CalculateWidget(),
        ButtonsWidget(),
      ],
    );
  }
}

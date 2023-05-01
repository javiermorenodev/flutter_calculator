import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';
import 'package:flutter_calculator/presentation/widgets/widgets.dart';
import 'package:sizer/sizer.dart';

class ButtonsWidget extends StatelessWidget {
  final bool isSecondary;

  const ButtonsWidget({
    Key? key,
    this.isSecondary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculaterBloc = context.read<CalculatorBloc>();
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemButton(
                  isSecondary: isSecondary,
                  value: 'AC',
                  isAc: true,
                  onPressed: () => calculaterBloc.add(ResetAll()),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '<',
                  isAc: true,
                  onPressed: () => calculaterBloc.add(DeleteLastEntry()),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '/',
                  isSigno: true,
                  onPressed: () => calculaterBloc
                      .add(const SelectOperation(operation: Operation.divi)),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: 'x',
                  isSigno: true,
                  onPressed: () => calculaterBloc
                      .add(const SelectOperation(operation: Operation.multi)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemButton(
                  isSecondary: isSecondary,
                  value: '7',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '7')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '8',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '8')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '9',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '9')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '-',
                  isSigno: true,
                  onPressed: () => calculaterBloc
                      .add(const SelectOperation(operation: Operation.sub)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemButton(
                  isSecondary: isSecondary,
                  value: '4',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '4')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '5',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '5')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '6',
                  onPressed: () =>
                      calculaterBloc.add(const AddNumber(number: '6')),
                ),
                ItemButton(
                  isSecondary: isSecondary,
                  value: '+',
                  isSigno: true,
                  onPressed: () => calculaterBloc
                      .add(const SelectOperation(operation: Operation.add)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            ItemButton(
                              isSecondary: isSecondary,
                              value: '1',
                              onPressed: () => calculaterBloc
                                  .add(const AddNumber(number: '1')),
                            ),
                            ItemButton(
                              isSecondary: isSecondary,
                              value: '2',
                              onPressed: () => calculaterBloc
                                  .add(const AddNumber(number: '2')),
                            ),
                            ItemButton(
                              isSecondary: isSecondary,
                              value: '3',
                              onPressed: () => calculaterBloc
                                  .add(const AddNumber(number: '3')),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ItemButton(
                              isSecondary: isSecondary,
                              value: '0',
                              bigW: true,
                              onPressed: () => calculaterBloc
                                  .add(const AddNumber(number: '0')),
                            ),
                            ItemButton(
                              isSecondary: isSecondary,
                              value: '.',
                              onPressed: () =>
                                  calculaterBloc.add(AddDecimalPoint()),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ItemButton(
                      isSecondary: isSecondary,
                      value: '=',
                      isResult: true,
                      bigH: true,
                      onPressed: () => calculaterBloc.add(CalculateResult()),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

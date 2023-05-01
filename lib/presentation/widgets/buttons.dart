import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                    onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary,
                    value: '<',
                    isAc: true,
                    onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary,
                    value: '/',
                    isSigno: true,
                    onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary,
                    value: 'x',
                    isSigno: true,
                    onPressed: () => {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemButton(
                    isSecondary: isSecondary, value: '7', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary, value: '8', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary, value: '9', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary,
                    value: '-',
                    isSigno: true,
                    onPressed: () => {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemButton(
                    isSecondary: isSecondary, value: '4', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary, value: '5', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary, value: '6', onPressed: () => {}),
                ItemButton(
                    isSecondary: isSecondary,
                    value: '+',
                    isSigno: true,
                    onPressed: () => {}),
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
                                onPressed: () => {}),
                            ItemButton(
                                isSecondary: isSecondary,
                                value: '2',
                                onPressed: () => {}),
                            ItemButton(
                                isSecondary: isSecondary,
                                value: '3',
                                onPressed: () => {}),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ItemButton(
                                isSecondary: isSecondary,
                                value: '0',
                                bigW: true,
                                onPressed: () => {}),
                            ItemButton(
                                isSecondary: isSecondary,
                                value: '.',
                                onPressed: () => {}),
                          ],
                        ),
                      ],
                    ),
                    ItemButton(
                        isSecondary: isSecondary,
                        value: '=',
                        isResult: true,
                        bigH: true,
                        onPressed: () => {}),
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

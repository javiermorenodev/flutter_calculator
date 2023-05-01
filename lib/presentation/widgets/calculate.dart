import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';

class CalculateWidget extends StatelessWidget {
  final bool isSecondary;

  const CalculateWidget({
    Key? key,
    this.isSecondary = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return isSecondary
            ? _content(state, context)
            : Expanded(
                flex: 1,
                child: _content(state, context),
              );
      },
    );
  }

  Widget _content(CalculatorState calculatorState, BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, themeState) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          calculatorState.firstNumber,
                          style: TextStyle(
                            fontSize: 45.0,
                            color: themeState.isPrimary
                                ? const Color(0xFF4D9BDE).withOpacity(.9)
                                : Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.9),
                          ),
                        ),
                      ),
                      if (calculatorState.operation != Operation.none)
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, left: 10.0),
                          child: Text(
                            calculatorState.getOperationValue(),
                            style: TextStyle(
                              fontSize: 45.0,
                              color: themeState.isPrimary
                                  ? const Color(0xFF4D9BDE).withOpacity(.9)
                                  : Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.9),
                            ),
                          ),
                        ),
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          calculatorState.secondNumber,
                          style: TextStyle(
                            fontSize: 45.0,
                            color: themeState.isPrimary
                                ? const Color(0xFF4D9BDE).withOpacity(.9)
                                : Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: themeState.isPrimary
                            ? const Color(0xFF4D9BDE).withOpacity(.6)
                            : Theme.of(context).primaryColor.withOpacity(.6),
                        width: 3,
                      ),
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    calculatorState.result,
                    style: TextStyle(
                      fontSize: 45.0,
                      color: themeState.isPrimary
                          ? const Color(0xFF4D9BDE)
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

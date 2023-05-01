import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';
import 'package:sizer/sizer.dart';

class ItemButton extends StatelessWidget {
  final String value;
  final bool isAc;
  final bool isSigno;
  final bool isResult;
  final bool bigW;
  final bool bigH;
  final Function onPressed;
  final bool isSecondary;

  const ItemButton({
    super.key,
    required this.value,
    this.isAc = false,
    this.isSigno = false,
    this.isResult = false,
    this.bigW = false,
    this.bigH = false,
    required this.onPressed,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return TextButton(
          onPressed: () => onPressed(),
          child: Container(
            width: bigW ? 150 : 65,
            height: bigH ? 140 : 65,
            decoration: isSecondary
                ? BoxDecoration(
                    color: isResult || bigW
                        ? state.dark
                            ? const Color(0xFF003f77)
                            : const Color(0xFF4F4174)
                        : null,
                    borderRadius: BorderRadius.circular(2.w),
                  )
                : BoxDecoration(
                    color: isSigno
                        ? state.dark
                            ? const Color(0xFF025cb2)
                            : const Color(0xFF95C1E5)
                        : isResult
                            ? const Color(0xFF1991ff)
                            : isAc
                                ? state.dark
                                    ? const Color(0xFF606161)
                                    : Colors.white
                                : state.dark
                                    ? const Color(0xFF303136)
                                    : const Color(0xFFBFD8E9),
                    borderRadius: BorderRadius.circular(2.w),
                  ),
            child: isSecondary
                ? _secondary()
                : Center(
                    child: Text(
                      value,
                      style: TextStyle(
                        color: isAc
                            ? const Color(0xFF8f8f91)
                            : isSigno
                                ? const Color(0xFF4D9BDE)
                                : isResult || !state.dark
                                    ? Colors.white
                                    : const Color(0xFF148fe5),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
          ),
        );
      },
    );
  }

  Widget _secondary() {
    return Center(
      child: Text(
        value,
        style: TextStyle(
          color: isAc ? const Color(0xFFa85d59) : const Color(0xFFd5c8f6),
          fontSize: 35.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

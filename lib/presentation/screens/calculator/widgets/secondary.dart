import 'package:flutter/material.dart';
import 'package:flutter_calculator/clippers/wave.dart';
import 'package:flutter_calculator/presentation/widgets/widgets.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

class SecondaryWidget extends StatelessWidget {
  const SecondaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: .5,
          child: ClipPath(
            clipper: WaveClipper(index: 2),
            child: Container(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        Opacity(
          opacity: .5,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: ClipPath(
              clipper: WaveClipper(index: 2),
              child: Container(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        ClipPath(
          clipper: WaveClipper(index: 1),
          child: Container(
            color: Theme.of(context).primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Expanded(flex: 1, child: SizedBox.shrink()),
                ButtonsWidget(isSecondary: true)
              ],
            ),
          ),
        ),
        Positioned(
          top: 10.h,
          right: 0,
          child: SizedBox(
            width: 100.w,
            child: const CalculateWidget(isSecondary: true),
          ),
        ),
      ],
    );
  }
}

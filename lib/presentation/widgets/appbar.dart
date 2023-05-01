import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: false,
          title: GestureDetector(
            onTap: () {
              context.read<ThemeBloc>().add(ChangeTheme());
            },
            child: Container(
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: state.isPrimary
                      ? const Color(0xFF025cb2)
                      : Theme.of(context).primaryColor,
                ),
              ),
              child: Center(
                child: Text(
                  state.dark ? 'light' : 'dark',
                  style: TextStyle(
                    color: state.isPrimary
                        ? const Color(0xFF025cb2)
                        : Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

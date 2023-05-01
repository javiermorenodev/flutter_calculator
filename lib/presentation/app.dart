import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calculator/blocs/blocs.dart';
import 'package:flutter_calculator/presentation/screens/screens.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(create: (BuildContext context) => ThemeBloc()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                title: 'Flutter Calculator',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primaryColor: const Color(0xFF5b4c88),
                  scaffoldBackgroundColor: const Color(0xFFC3C3C3),
                  textTheme: GoogleFonts.orbitronTextTheme(
                      Theme.of(context).textTheme),
                ),
                darkTheme: ThemeData(
                  primaryColor: const Color(0xFF025cb2),
                  scaffoldBackgroundColor: const Color(0xFF18191c),
                  textTheme: GoogleFonts.orbitronTextTheme(
                      Theme.of(context).textTheme),
                ),
                themeMode: state.dark ? ThemeMode.dark : ThemeMode.light,
                home: const CalculatorScreen(),
              );
            },
          );
        },
      ),
    );
  }
}

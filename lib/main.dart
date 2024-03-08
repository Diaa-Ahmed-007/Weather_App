import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_states.dart';
import 'package:weatherapple/views/home_view.dart';
import 'package:weatherapple/widgets/color_theme.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWetherCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<GetWetherCubit, WetherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                appBarTheme: AppBarTheme(
                  backgroundColor: getColor(
                      BlocProvider.of<GetWetherCubit>(context)
                          .wetherModel
                          ?.wetherState),
                ),
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          },
        );
      }),
    );
  }
}
 // colorScheme: ColorScheme.fromSwatch(
                //         primarySwatch: getColor(
                //             BlocProvider.of<GetWetherCubit>(context)
                //                 .wetherModel
                //                 ?.wetherState))
                //     .copyWith(
                //         background: getColor(
                //             BlocProvider.of<GetWetherCubit>(context)
                //                 .wetherModel
                //                 ?.wetherState)),
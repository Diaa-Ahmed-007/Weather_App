import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_states.dart';
import 'package:weatherapple/views/about_us_view.dart';
import 'package:weatherapple/views/error_view.dart';
import 'package:weatherapple/views/search_view.dart';
import 'package:weatherapple/widgets/no_weather_widget.dart';
import 'package:weatherapple/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const AboutUs();
                },
              ),
            );
          },
          icon: const Icon(
            Icons.account_box_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          BlocBuilder<GetWetherCubit, WetherState>(builder: (context, state) {
            if (state is WetherArivedState) {
              return IconButton(
                onPressed: () {
                  {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const SearchView();
                        },
                      ),
                    );
                  }
                },
                icon: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
              );
            } else {
              return const Icon(
                Icons.adb_outlined,
                color: Colors.transparent,
              );
            }
          }),
        ],
      ),
      body: BlocBuilder<GetWetherCubit, WetherState>(builder: (context, state) {
        if (state is WetherInitialState) {
          return const NoWeatherWidget();
        } else if (state is WetherArivedState) {
          return WeatherInfoBody(
            wether: state.wetherModel,
          );
        } else {
          return const ErrorView();
        }
      }),
    );
  }
}

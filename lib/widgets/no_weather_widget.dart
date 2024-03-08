import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/views/search_view.dart';
import 'package:weatherapple/widgets/color_theme.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getColor(BlocProvider.of<GetWetherCubit>(context)
                  .wetherModel
                  ?.wetherState),
              getColor(BlocProvider.of<GetWetherCubit>(context)
                  .wetherModel
                  ?.wetherState)[200]!,
              getColor(BlocProvider.of<GetWetherCubit>(context)
                  .wetherModel
                  ?.wetherState)[50]!,
            ]),
      ),
      child: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'there is no Weather',
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('start searching',
                      style: TextStyle(color: Colors.black, fontSize: 24)),
                  TextButton(
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
                      child: const Text('Now',
                          style: TextStyle(color: Colors.white, fontSize: 24)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

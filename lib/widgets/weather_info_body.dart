import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/models/wethermodel.dart';
import 'package:weatherapple/widgets/color_theme.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required this.wether}) : super(key: key);
  final WetherModel wether;
  @override
  Widget build(BuildContext context) {
    var wetherModel = BlocProvider.of<GetWetherCubit>(context).wetherModel;
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              wetherModel!.city,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'Updated in ${wetherModel.date.hour}:${wetherModel.date.minute}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                wetherModel.imageState.contains('https:')
                    ? Image.network(wetherModel.imageState)
                    : Image.network(
                        'https:${wetherModel.imageState}',
                      ),
                Text(
                  wetherModel.avgdegree.round().toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${wetherModel.maxdegree.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${wetherModel.mindegree.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              wetherModel.wetherState,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

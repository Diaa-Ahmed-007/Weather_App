import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/views/search_view.dart';
import 'package:weatherapple/widgets/color_theme.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});
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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/error.png',
                    alignment: Alignment.center, fit: BoxFit.fill),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'No Data',
                style: TextStyle(color: Colors.red, fontSize: 32),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      getColor(BlocProvider.of<GetWetherCubit>(context)
                          .wetherModel
                          ?.wetherState),
                    ),
                    foregroundColor: MaterialStateProperty.all(
                      getColor(BlocProvider.of<GetWetherCubit>(context)
                          .wetherModel
                          ?.wetherState)[50]!,
                    )),
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
                child: const Text('back to search')),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

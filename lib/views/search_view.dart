import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_cubit.dart';
import 'package:weatherapple/widgets/color_theme.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Weather App',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: SizedBox(
              height: 250,
              child: CSCPicker(
                onCountryChanged: (country) {},
                onStateChanged: (state) {},
                onCityChanged: (city) {
                  if (city != null) {
                    GetWetherCubit getwether =
                        BlocProvider.of<GetWetherCubit>(context);
                    getwether.getwether(value: city.toString());
                    Navigator.pop(context);
                  }
                },
                layout: Layout.vertical,
                disableCountry: false,
                countrySearchPlaceholder: "Country",
                stateSearchPlaceholder: "State",
                citySearchPlaceholder: "City",
                countryDropdownLabel: "Select Country",
                stateDropdownLabel: "Select State",
                cityDropdownLabel: "Select City",
              ),
              // TextField(
              //   style: const TextStyle(color: Colors.blueAccent),
              //   cursorColor: Colors.black,
              //   cursorHeight: 25,
              //   onSubmitted: (value) async {
              //     GetWetherCubit getwether =
              //         BlocProvider.of<GetWetherCubit>(context);
              //     getwether.getwether(value: value);
              //     // ignore: use_build_context_synchronously
              //     Navigator.pop(context);
              //   },
              //   decoration: const InputDecoration(
              //     // prefix: ,   to type undeleted words from left
              //     // suffix: ,   to type undeleted words from right
              //     hintText: 'Enter the city',
              //     hintStyle: TextStyle(color: Colors.blue),
              //     labelText: "Search",
              //     labelStyle: TextStyle(color: Colors.blue),

              //     hintMaxLines: 1,
              //     filled: true,
              //     fillColor: Colors.white,
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(8)),
              //       borderSide: BorderSide(
              //         color: Colors.blue,
              //       ),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(8)),
              //       borderSide:
              //           BorderSide(color: Colors.blue, style: BorderStyle.solid),
              //     ),
              //     suffixIcon: Icon(
              //       Icons.search,
              //       color: Colors.blue,
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

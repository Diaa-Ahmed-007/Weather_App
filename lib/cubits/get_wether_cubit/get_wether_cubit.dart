import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapple/cubits/get_wether_cubit/get_wether_states.dart';
import 'package:weatherapple/models/wethermodel.dart';
import 'package:weatherapple/services/get_wether.dart';

class GetWetherCubit extends Cubit<WetherState> {
  GetWetherCubit() : super(WetherInitialState());
  WetherModel? wetherModel;
  getwether({required String value}) async {
    try {
      wetherModel = await WetherApi().getWether(city: value);
      emit(WetherArivedState(wetherModel!));
    } catch (e) {
      emit(
        NoDataState(
          e.toString(),
        ),
      );
    }
  }
}

import 'package:weatherapple/models/wethermodel.dart';

abstract class WetherState {}

class WetherInitialState extends WetherState {}

class WetherArivedState extends WetherState {
  final WetherModel wetherModel;

  WetherArivedState( this.wetherModel);
}

class NoDataState extends WetherState {
 final String errmassge;
  NoDataState(this.errmassge);
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapple/models/wethermodel.dart';

class WetherApi {
  Dio dio = Dio();
  final String domin = 'http://api.weatherapi.com/v1';
  final String apikey = 'ba4792145922487a83e161001232611';
  Future<WetherModel> getWether({required String city}) async {
    try {
      Response response =
          await dio.get('$domin/forecast.json?key=$apikey&q=$city');
      WetherModel wetherModel = WetherModel.fromjson(response.data);
      return wetherModel;
    } on DioException catch (e) {
      final String errormsg = e.response?.data['error']['message']?? 'oops there is an error, try later';
      throw Exception(errormsg);
    } catch (e) {
      log(e.toString());
      throw Exception('oops there is an error, try later');
    }
  }
}

class WetherModel {
  final String city;
  final DateTime date;
  final String imageState;
  final double avgdegree;
  final double maxdegree;
  final double mindegree;
  final String wetherState;
  WetherModel({ 
    required this.wetherState,
      required this.city,
      required this.date,
      required this.imageState,
      required this.avgdegree,
      required this.maxdegree,
      required this.mindegree});
  factory WetherModel.fromjson(json) {
    return WetherModel(
      city: json['location']['name'],
      wetherState: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      date: DateTime.parse(json['current']['last_updated']),
      imageState: json['forecast']['forecastday'][0]['day']['condition']
          ['icon'],
      avgdegree: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxdegree: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      mindegree: json['forecast']['forecastday'][0]['day']['mintemp_c'],
    );
  }
}

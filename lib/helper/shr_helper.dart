import 'dart:convert';
import 'package:aedvans_exam_1/model/detail_model.dart';
import 'package:aedvans_exam_1/model/home_model.dart';
import 'package:http/http.dart' as http;

class Helper {
  static Helper helper = Helper._();
  Helper._();
  Future<CovidModel?> getCovid() async {
    String link = "https://covid-19-statistics.p.rapidapi.com/regions";

    http.Response response = await http.get(Uri.parse(link), headers: {
      "x-rapidapi-host": "covid-19-statistics.p.rapidapi.com",
      "x-rapidapi-key": "15e08b4c8dmsh6070c2aa3738a3cp145e39jsnd649680af011"
    });

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      CovidModel model = CovidModel.mapToModel(data);
      return model;
    }
    return null;
  }

  Future<CovidDataModel?> getCovidAip() async {
    String link =
        "https://covid-19-statistics.p.rapidapi.com/reports?city_name=Autauga&region_province=Alabama&iso=USA&region_name=US&q=US%20Alabama&date=2020-04-16";

    http.Response response = await http.get(Uri.parse(link), headers: {
      "header 'x-rapidapi-host": "covid-19-statistics.p.rapidapi.com",
      "header 'x-rapidapi-key":
          "15e08b4c8dmsh6070c2aa3738a3cp145e39jsnd649680af011",
    });

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      CovidDataModel model = CovidDataModel.mapToModel(data);
      return model;
    }
    return null;
  }
}

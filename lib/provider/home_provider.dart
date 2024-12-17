import 'package:aedvans_exam_1/helper/shr_helper.dart';
import 'package:aedvans_exam_1/model/detail_model.dart';
import 'package:aedvans_exam_1/model/home_model.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  CovidModel? model;
  CovidDataModel? model1;
  Future<void> getCovid() async {
    model = await Helper.helper.getCovid();
    print("================${model?.data}");
    notifyListeners();
  }

  Future<void> getCovidData() async {
    model1 = await Helper.helper.getCovidAip();
    print("================${model1?.data}");
    notifyListeners();
  }
}

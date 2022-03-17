import 'package:flutter/cupertino.dart';

class NavigationProvider extends ChangeNotifier{
  String? _title1,_description1;
  String? _title2,_description2;
  String? _title3,_description3;


  setTitleAndDisForSubOne(String title,description) {
    _title1=title;
    _description1=description;
    notifyListeners();
  }
  setTitleAndDisForSubTwo(String title,description) {
    _title2=title;
    _description2=description;
    notifyListeners();
  }
  setTitleAndDisForSubThree(String title,description) {
    _title3=title;
    _description3=description;
    notifyListeners();
  }


  String? get title1 => _title1;
  String? get description1 => _description1;
  String? get title2 => _title2;
  String? get description2 => _description2;
  String? get title3 => _title3;
  String? get description3 => _description3;
}
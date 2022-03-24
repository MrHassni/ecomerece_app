import 'package:flutter/cupertino.dart';

import '../shared_preferences/shared_preferences.dart';

class CartProvider extends ChangeNotifier{

  List<String> items = [];

  addProductToCart() async {
   // items = (await SharedPreferencesFunctions.getProductIDsSharedPreference())!;
    notifyListeners();
  }



  List? get cartItems => items;

}
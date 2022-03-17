import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  static DialogUtils _instance = new DialogUtils.internal();

  DialogUtils.internal();

  factory DialogUtils() => _instance;

  static void showCustomDialog(BuildContext context,
      {required String title,
        String okBtnText = "Ok",
        String cancelBtnText = "Cancel",
        required Function okBtnFunction}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(title),
            actions: <Widget>[

              TextButton(
                  style: ButtonStyle(
                    // backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Constants.kDarkOrangeColor),
                          )
                      )
                  ),

                  child: Text(cancelBtnText,style: TextStyle(color: Constants.kGraniteGreyColor),),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Constants.kDarkOrangeColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Constants.kDarkOrangeColor),
                )
                )
                ),
                child: Text(okBtnText,style: TextStyle(color: Constants.kWhiteAccent),),
                onPressed: okBtnFunction(),
              ),
            ],
          );
        });
  }
}

//dialog box can use where we want to save or cancel anything its alert
// call like this...

// DialogUtils.showCustomDialog(context,
// title: "Are You sure about Delete a product?",
// okBtnText: "Confirm",
// cancelBtnText: "Cancel",
// okBtnFunction: () { } /* call method in which you have write your logic and save process  */);

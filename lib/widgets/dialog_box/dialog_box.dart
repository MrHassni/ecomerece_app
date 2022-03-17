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
                            side: BorderSide(color: Colors.red)
                        )
                    )
                ),
                child: Text(okBtnText),
                onPressed: okBtnFunction(),
              ),
              TextButton(
          style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Constants.kDarkOrangeColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.red)
          )
          )
          ),
                  child: Text(cancelBtnText,style: TextStyle(color: Constants.kWhiteAccent),),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }
}
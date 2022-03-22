import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class FilterList extends StatefulWidget {
  FilterList({required this.name,});
  final String name;
  // final String txt1;
  // final String txt2;
  // final String txt3;




  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {


  @override
  Widget build(BuildContext context) {

    return Container(width: MediaQuery.of(context).size.width*0.45,
      height: 50,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Container(
        height: 30,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        // margin: EdgeInsets.all(40),
        // width: double.infinity,
        width: 85,
        decoration: BoxDecoration(
          color: Constants.kGreyLightColor,
          borderRadius: BorderRadius.circular(30),

          // border: Border.all(
          //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

        ),
        child:  Center(
          child: Text(widget.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14),),
        ),
      ),
        ],
      ),
    );


  }


}

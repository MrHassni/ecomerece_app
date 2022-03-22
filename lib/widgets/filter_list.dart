import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class FilterList extends StatefulWidget {
  const FilterList({
    required this.list,
  });


  final List list;

  // final String txt1;
  // final String txt2;
  // final String txt3;

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
      itemBuilder: (context,index) {

        return Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),

          decoration: BoxDecoration(
            color: Constants.kGreyLightColor,
            borderRadius: BorderRadius.circular(10),

            // border: Border.all(
            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),
          ),
          child: Center(
            child: Text(
              widget.list[index],
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        );
      }
    );
  }
}

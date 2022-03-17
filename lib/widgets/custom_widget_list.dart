import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class CustomWidgetList extends StatefulWidget {
  CustomWidgetList({required this.title, required this.txt1, });
  final String title;
  final String txt1;
  // final String txt2;
  // final String txt3;




  @override
  State<CustomWidgetList> createState() => _CustomWidgetListState();
}

class _CustomWidgetListState extends State<CustomWidgetList> {


  @override
  Widget build(BuildContext context) {

            return Container(width: MediaQuery.of(context).size.width*0.45,
              height: 50,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(widget.title),
                  SizedBox(
                    height: 20,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(widget.txt1),
                          );

                        }),
                  ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text(widget.txt1),
                //     Text(widget.txt2),
                //     Text(widget.txt3),
                //   ],
                //
                // )
                ],
              ),
            );


          }


}

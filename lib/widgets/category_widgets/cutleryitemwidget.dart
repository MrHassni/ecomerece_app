
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../bottom_navigation/bottom_navigation_bar.dart';

class CutleryWidget extends StatefulWidget {
  const CutleryWidget({required this.cutleryimg});
  final List cutleryimg;

  @override
  State<CutleryWidget> createState() => _CutleryWidgetState();
}

class _CutleryWidgetState extends State<CutleryWidget> {
  // final String pic;
  bool _addedToFav = false;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        childAspectRatio: 5/8,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 10,
        physics:  const NeverScrollableScrollPhysics(),
    crossAxisCount: 3,
    children: List.generate(13,(index){
      return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigate(i: 9,),
            ),
          );
        },
        child: Card(
          margin: EdgeInsets.zero,
          // margin: const EdgeInsets.only(left: 15.0,bottom_navigation: 20),
          // color: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 7.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                      child: Image.asset( widget.cutleryimg[index],
                        height: 75,
                        fit: BoxFit.cover,
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 10,left: 10),
                      child: InkWell(
                        child:  Icon(_addedToFav ? Icons.favorite : Icons.favorite_border,color: _addedToFav ? Colors.red : Colors.white,),

                        onTap: () {
                          log('favorite icon clicked...');

                          if(_addedToFav == true){
                            setState(() {
                              _addedToFav =false;
                            });

                          }else{
                            setState(() {
                              _addedToFav = true;
                            });

                          }
                          // _favIconColor = Colors.red;

                        },
                      ),
                    ),
                  ],

                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.4,
                    color: Constants.kWhiteAccent,
                    child:Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:   const [
                            Text('Opal Dinner Set best quality',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                            // SizedBox(width: 10,),
                            Text('500 gm          ',style: TextStyle(fontSize: 12,color: Constants.kGreyColor),),
                            // SizedBox(height: 5,),
                            Text('Rs 300          ',style: TextStyle(fontSize: 12,color: Constants.kGreyColor),),

                          ]
                      ),

                    ),

                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  height: 25,
                  width: 85,
                  child: MaterialButton(child: const FittedBox(child: Text('Add to Cart',style: TextStyle(color: Colors.white),)), onPressed: (){
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));
                  },
                  color: Constants.kDarkOrangeColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),


              ] ),
        ),
      );})
    );


  }
}
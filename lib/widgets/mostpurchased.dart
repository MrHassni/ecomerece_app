
import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class MostPurchased extends StatefulWidget {

   MostPurchased({required this.mostPurchasedImg});
   final String mostPurchasedImg;

  @override
  State<MostPurchased> createState() => _MostPurchasedState();
}

class _MostPurchasedState extends State<MostPurchased> {
  // final String pic;
  Color _favIconColor = Constants.kRedColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 8,left: 10,right: 10),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        // margin: const EdgeInsets.only(left: 15.0,bottom_navigation: 20),
        // color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 7.5,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 90,

                    child: Image.asset( widget.mostPurchasedImg,
                      // height: 80,
                      // width:MediaQuery.of(context).size.width * 0.4 ,
                      // height: 150.0,
                      // width: 100.0,
                    ),
                  ),

                  // Container(
                  //     decoration: const BoxDecoration(
                  //       color: Colors.red,
                  //         borderRadius: BorderRadius.only(
                  //             topRight: Radius.circular(35),
                  //             topLeft: Radius.circular(35)
                  //         )
                  //     ),
                  //     child: Image.asset('images/img.png',)),
                  Container(
                    margin: EdgeInsets.only(top: 10,left: 10),
                    child: InkWell(
                      child: Icon(Icons.favorite_border,color: _favIconColor,),

                      onTap: () {
                        print('favorite icon clicked...');

                        if(_favIconColor == Constants.kRedColor){
                          setState(() {
                            Icon(Icons.favorite,color: _favIconColor,);
                            _favIconColor = Constants.kRedColor;

                          });

                        }else{
                          setState(() {
                            _favIconColor =Constants.kRedColor;
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
                  height: 45.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Constants.kWhiteAccent,
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:   const [
                          Text('Opal Dinner Set',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text('500 gm          ',style: TextStyle(fontSize: 12,color: Constants.kGreyColor),),
                          SizedBox(width: 10,),
                          Text('Rs 300          ',style: TextStyle(fontSize: 12,color:Constants.kGreyColor),),


                        ]
                    ),

                  ),

                ),
              ),
              SizedBox(height: 20,
                width: 85,
                child: CartButton(text: 'Add to Cart', onPressed: (){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));
                }),
              ),


            ] ),
      ),
    );


  }
}
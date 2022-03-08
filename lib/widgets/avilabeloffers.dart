
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class AvilabelOffers extends StatefulWidget {

  @override
  State<AvilabelOffers> createState() => _AvilabelOffersState();
}

class _AvilabelOffersState extends State<AvilabelOffers> {
  // final String pic;
  Color _favIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0,bottom: 20),
      width: MediaQuery.of(context).size.width * 0.75,
      child: Card(
        // margin: EdgeInsets.only(left: 20.0,bottom_navigation: 20),
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
                  ClipRRect(

                    child: Image.asset('images/avilabelofferimg.png',
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
                    margin: const EdgeInsets.only(top: 10,left: 230),
                    // child: Row(
                    //   mainAxisSize: MainAxisSize.max,
                    //   children: [
                    //
                    //     SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.2),
                        // const Icon(Icons.favorite,color: Colors.white),
                        child:InkWell(
                          child: Icon(Icons.favorite_border,color: _favIconColor,),

                          onTap: () {
                            print('favorite icon clicked...');

                            if(_favIconColor == Constants.kWhiteAccent){
                              setState(() {
                                _favIconColor = Constants.kRedColor;
                              });

                            }else{
                              setState(() {
                                _favIconColor = Constants.kWhiteAccent;
                              });

                            }
                            // _favIconColor = Colors.red;

                          },
                        ),
                    //   ],
                    // ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30,),

                    height: 40.0,
                    width: 100.0,
                    // width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.3,
                    decoration: const BoxDecoration(
                      // color: Colors.deepOrange,
                      image: DecorationImage(image:AssetImage("images/offbuttonimg.png"),),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: const Center(
                      child: Text('upto 60% Off', style: TextStyle(color: Constants.kWhiteAccent,),),),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 90,left: 10),
                    height: 20.0,
                    width: 50.0,
                    // width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.1,
                    decoration: const BoxDecoration(
                      color: Constants.kWhiteAccent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.access_time_outlined,color: Constants.kBlackColor,size: 14,),
                        Text('30 min',style: TextStyle(color: Constants.kBlackColor,fontSize: 10),),
                      ],
                    ),
                  ),
                ],

              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  // color: Colors.white,
                  height: 95,
                  width: MediaQuery.of(context).size.width * 0.75,
                  color: Constants.kWhiteAccent,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Dinning Set',style: TextStyle(fontWeight: FontWeight.bold),),
                            //SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.3),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(3),
                              height: 22.0,
                              width: 50.0,
                              // width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.1,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                              ),
                              child: Row(
                                children: const [

                                  FittedBox
                                    (child: Text('5.0',style: TextStyle(color: Constants.kWhiteAccent),)),
                                  Icon(Icons.star_outlined,color: Constants.kWhiteAccent,size: 18,),
                                ],
                              ),
                            ),

                          ]
                      ),
                      const Align(alignment: Alignment.centerLeft,
                        child: Text('200 mg',style: TextStyle(color: Constants.kGreyColor),)),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Rs100',style: TextStyle(color: Constants.kDarkOrangeColor,fontWeight: FontWeight.bold),),
                            SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.1),
                            // Icon(Icons.star_border,color: Colors.deepOrange,),
                            const Text('200',style: TextStyle(color: Constants.kGreyColor),),
                          ]
                      ),


                    ],
                  ),

                ),
              ),
              Container(height: 2,width: MediaQuery.of(context).size.width * 0.75,color: Colors.grey[200],),

             Padding(
               padding: EdgeInsets.only(right: 10,top: 10),
               child: Align(alignment: Alignment.centerRight,
                   child: SizedBox(height: 35,
                       child: CartButton(onPressed: () {  }, text: 'Add to cart',))),
             ),



            ] ),
      ),
    );


  }
}
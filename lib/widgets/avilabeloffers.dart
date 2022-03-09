
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class AvailabelOffers extends StatefulWidget {
  final int index;
  const AvailabelOffers({Key? key,required this.index}) : super(key: key);


  @override
  State<AvailabelOffers> createState() => _AvailabelOffersState();
}

class _AvailabelOffersState extends State<AvailabelOffers> {
  // final String pic;
  bool _fav = false ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      child: Card(
        margin: EdgeInsets.only(
            bottom: 15, right: widget.index == 4 ? 10 : 5, left: widget.index == 0 ? 10 : 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset('images/avilabelofferimg.png',
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10,left: 230),
                    margin: const EdgeInsets.only(top: 10,left: 250),
                    // child: Row(
                    //   mainAxisSize: MainAxisSize.max,
                    //   children: [
                    //
                    //     SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.2),
                        // const Icon(Icons.favorite,color: Colors.white),
                        child:InkWell(
                          child: Icon(_fav ? Icons.favorite : Icons.favorite_border ,color: _fav ? Colors.red : Colors.white,),

                          onTap: () {
                            print('favorite icon clicked...');

                            if(_fav == true){
                              setState(() {
                                _fav = false;
                              });

                            }else{
                              setState(() {
                                _fav = true;
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

             Align(alignment: Alignment.centerRight,
                 child: Container(
                     padding: EdgeInsets.only(right: 10,top: 10),
                 height: 40,
                       child: CartButton(onPressed: () {  }, text: 'Add to cart',)),
                 ),




            ] ),
      ),
    );


  }
}

import 'package:crockery_app/buttons/cartbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/navigator.dart';

class FeaturedProducts extends StatefulWidget {
  // FeaturedProducts({required this.img});
  // final String img;

  @override
  State<FeaturedProducts> createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  // final String pic;
  Color _favIconColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8,left: 5),
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        // margin: const EdgeInsets.only(left: 15.0,bottom: 20),
        // color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 20,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 90,

                      child: Image.asset( 'images/opaldinner.png',
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
                      child: Icon(Icons.favorite,color: _favIconColor,),

                      onTap: () {
                        print('favorite icon clicked...');

                        if(_favIconColor == Colors.white){
                          setState(() {
                            _favIconColor = Colors.red;
                          });

                        }else{
                          setState(() {
                            _favIconColor = Colors.white;
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
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.4,
                  color: Colors.white,
                  child:Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:   const [
                          Text('Opal Dinner Set',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Text('500 gm          ',style: TextStyle(fontSize: 12,color: Colors.grey),),
                          SizedBox(width: 10,),
                          Text('Rs 300          ',style: TextStyle(fontSize: 12,color: Colors.grey),),




                          // SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.2),
                          // Icon(Icons.star_outlined,color: Colors.deepOrange,),
                          // Text('5.0'),
                        ]
                    ),

                  ),

                ),
              ),
              CartButton(text: 'Add to Cart', onPressed: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));
              }),


            ] ),
      ),
    );


  }
}
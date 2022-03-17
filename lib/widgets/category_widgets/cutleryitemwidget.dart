
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../helper/navigator.dart';
import 'buttons/cartbutton.dart';

class CutleryWidget extends StatefulWidget {
  CutleryWidget({required this.cutleryimg});
  final List cutleryimg;

  @override
  State<CutleryWidget> createState() => _CutleryWidgetState();
}

class _CutleryWidgetState extends State<CutleryWidget> {
  // final String pic;
  Color _favIconColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        childAspectRatio: 5/8,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 10,
        physics:  const NeverScrollableScrollPhysics(),
    crossAxisCount: 3,
    children: List.generate(7,(index){
      return InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomNavigate(i: 16,),
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
                      margin: const EdgeInsets.only(top: 10,left: 10),
                      child: InkWell(
                        child: Icon(Icons.favorite_border,color: _favIconColor,),

                        onTap: () {
                          print('favorite icon clicked...');

                          if(_favIconColor == Constants.kRedColor){
                            setState(() {
                              _favIconColor =Constants.kRedColor;
                            });

                          }else{
                            setState(() {
                              _favIconColor = Constants.kRedColor;
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
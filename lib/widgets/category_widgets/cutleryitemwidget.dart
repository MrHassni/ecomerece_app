import 'package:crockery_app/widgets/custom_widget_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant/constant.dart';
import '../../constant/constant.dart';
import '../../helper/navigator.dart';
import '../buttons/cartbutton.dart';

class CutleryWidget extends StatefulWidget {
  CutleryWidget({required this.cutleryimg});
  final String cutleryimg;

  @override
  State<CutleryWidget> createState() => _CutleryWidgetState();
}

class _CutleryWidgetState extends State<CutleryWidget> {
  // final String pic;
  Color _favIconColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      // margin: const EdgeInsets.only(left: 15.0,bottom_navigation: 20),
      // color: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 7.5,
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  widget.cutleryimg,
                  // height: 80,
                  // width:MediaQuery.of(context).size.width * 0.4 ,
                  // height: 150.0,
                  // width: 100.0,
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
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: InkWell(
                    child: Icon(
                      Icons.favorite_border,
                      color: _favIconColor,
                    ),
                    onTap: () {
                      print('favorite icon clicked...');

                      if (_favIconColor == Constants.kRedColor) {
                        setState(() {
                          _favIconColor = Constants.kRedColor;
                        });
                      } else {
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
                height: 58,
                width: MediaQuery.of(context).size.width * 0.4,
                color: Constants.kWhiteAccent,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Opal Dinner Set best quality',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 10,),
                        Text(
                          '500 gm          ',
                          style: TextStyle(
                              fontSize: 12, color: Constants.kGreyColor),
                        ),
                        // SizedBox(height: 5,),
                        Text(
                          'Rs 300          ',
                          style: TextStyle(
                              fontSize: 12, color: Constants.kGreyColor),
                        ),

                        // SizedBox(width: MediaQuery.of( NavigationService.navigatorKey.currentContext!,).size.width*0.2),
                        // Icon(Icons.star_outlined,color: Colors.deepOrange,),
                        // Text('5.0'),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              width: 85,
              child: CartButton(
                  text: 'Add to Cart',
                  onPressed: () {
                    _settingModalBottomSheet(context);
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  OptNumber()));
                  }),
            ),
          ]),
    );
  }
}

//bottom sheet function...
void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          margin: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // new ListTile(
              //     leading: new Icon(Icons.music_note),
              //     title: new Text('Music'),
              //     onTap: () => {}
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      height: 167,
                      width: 200,
                      child: Image.asset('images/spoonimg.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Humectents',
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontSize: 15,
                            fontFamily: 'Nuntio-Bold.ttf'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 100,
                        width: 150,
                        child: Text(
                          'here is mentions product details and know about products.here is mentions product '
                          'details and know about products.',
                          style: TextStyle(color: Constants.kGraniteGreyColor),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Rs 29.8',
                        style: TextStyle(color: Constants.kDarkOrangeColor),
                      ),
                    ],
                  ),
                ],
              ),
              //custom list

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomWidgetList(title: 'Material Types', txt1: 'steel', ),
                    Container(width: 2,height: 50,
                    color: Constants.kGreyColor,),
                    CustomWidgetList(title: 'Material Types', txt1: 'steel',),
                  ],
                ),
              Container(alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: CustomWidgetList(title: 'Material Types', txt1: 'steel',),
              ),
              Divider(height: 2,
              color: Constants.kGreyColor,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(right: 5, left: 10),
                      height: 20,
                      width: 20,
                      color: Constants.kWhiteAccent,
                      child:  Image.asset(
                        'images/minse_img.png',
                        color: Constants.kBlackColor,
                      ),
                    ),
                    Container(height: 20,
                        width: 20,
                        color: Constants.kGreyColor,
                        child: Center(child: Text('1',style: TextStyle(color: Constants.kBlackColor),))),
                    Container(
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(right: 5,left: 10),
                        height: 20,
                        width: 20,
                        color: Constants.kDarkOrangeColor,
                        child: Image.asset('images/plus_img.png',color: Constants.kWhiteAccent,)),
                    Spacer(),
                    Text('Rs 29.0',style: TextStyle(color: Constants.kBlackColor,fontSize: 18,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),
              Divider(height: 2,
                color: Constants.kGreyColor,),
              Center(
                child: Container(
                  // padding: EdgeInsets.only(top: 10),
                  width: 200,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Constants.kDarkOrangeColor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Constants.kDarkOrangeColor),
                              )
                          )
                      ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Constants.kWhiteAccent),
                    ),
                    onPressed: () {}
                        ),
                ),
              ),


              // ListTile(
              //   leading: new Icon(Icons.videocam),
              //   title: new Text('Video'),
              //   onTap: () => {},
              // ),
            ],
          ),
        );
      });
}

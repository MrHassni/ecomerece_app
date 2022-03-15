
import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_sheet.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<SearchScreen> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              //   Navigator.push(context, MaterialPageRoute(
                              //       builder: (context) => Home()),
                              //   );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Constants.kDarkOrangeColor,
                            )),
                        const Text(
                          'Search Product',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5,bottom: 10),
                      height: 30,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                    ),
                      child: TextField(
                        textAlign: TextAlign.center,

                        // textAlignVertical: TextAlignVertical.center,

                        decoration: const InputDecoration(
                            hintText: 'Search Product',
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.all(8),
                            border: InputBorder.none),
                        onChanged: (value) {
                          // Do something
                        },
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(bottom: 10,),
                      // margin: EdgeInsets.all(40),
                      // width: double.infinity,
                      width: 85,
                      child: FlatButton(
                        child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        onPressed: () {

                        },

                        color: Constants.kDarkOrangeColor,
                        textColor: Constants.kWhiteAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),

                  ],
                ),
                const Divider(height: 20,
                color: Constants.kLightGreyColor,),


                Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Search History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                      Icon(Icons.delete,color: Constants.kLightGreyColor,),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      // margin: EdgeInsets.all(40),
                      // width: double.infinity,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Constants.kGreyColor,
                        borderRadius: BorderRadius.circular(30),

                        // border: Border.all(
                        //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                      ),
                      child: const Center(
                        child: Text('salad spoon',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),),
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      // margin: EdgeInsets.all(40),
                      // width: double.infinity,
                      width: 85,
                      decoration: BoxDecoration(
                        color: Constants.kGreyColor,
                        borderRadius: BorderRadius.circular(30),

                        // border: Border.all(
                        //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                      ),
                      child: const Center(
                        child: Text('tea spoon',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 15),),
                      ),
                    ),
                  ],
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}

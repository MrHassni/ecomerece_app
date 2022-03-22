
import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';

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
          child: Column(
            children: [
              const TopBarWithButtons(pageDescription: 'Search Products', pageName:'Search',showBackButton: false,),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                            child: TextField(
                              textAlign: TextAlign.start,

                              // textAlignVertical: TextAlignVertical.center,

                              decoration: const InputDecoration(
                                  hintText: 'Search Product',
                                  hintStyle: TextStyle(fontSize: 13,),
                                  prefixIcon: Icon(Icons.search),
                                  contentPadding: EdgeInsets.all(14),
                                  border: InputBorder.none),
                              onChanged: (value) {
                                // Do something
                              },
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: MaterialButton(
                              child: const FittedBox(child: Text('Search',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14),)),
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
                    ),
                    const Divider(height: 20,
                    color: Constants.kLightGreyColor,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Search History',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,fontStyle: FontStyle.italic),),
                          // Icon(Icons.delete,color: Constants.kLightGreyColor,),
                          SizedBox(height: 20,
                              width: 20,
                              child: Image.asset('images/del_img.png')),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5),
                          // margin: EdgeInsets.all(40),
                          // width: double.infinity,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(30),

                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                          child: const Center(
                            child: Text('Salad spoon',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),),
                          ),
                        ),
                        Container(
                          height: 30,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(5),
                          // margin: EdgeInsets.all(40),
                          // width: double.infinity,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(30),

                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                          child: const Center(
                            child: Text('Tea spoon',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 14),),
                          ),
                        ),
                      ],
                    ),




                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
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
                              hintText: 'Search Product',hintStyle: TextStyle(fontSize: 13,),
                              prefixIcon: Icon(Icons.search),
                              // contentPadding: EdgeInsets.all(10),
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
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Search History',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14,fontStyle: FontStyle.italic),),
                      Icon(Icons.delete,color: Constants.kLightGreyColor,),
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
                        color: Constants.kGreyColor,
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
                        color: Constants.kGreyColor,
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
        ),
      ),
    );
  }
}

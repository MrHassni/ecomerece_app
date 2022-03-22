import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_with_buttons.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_without_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/filter_list.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<FilterScreen> with TickerProviderStateMixin {
  final List _filterICateName = [
'Dinning And Kitchen',
    'Dinner Set',
    'Crockery',

  ];
  final List _filterBrandsName = [
    'Appollo',
    'Gifto',
    'Camri',
    'Elahi Crockery store',

  ];
  final List _filterMaterialName = [
    'Iron',
    'Wood',
    'Alloy',
    'Stainless steel',
    'Fabric and Plastic',

  ];
  final List _filterLocationName = [
  'Lahore',
    'Faisalabad',
    'Jaranwala',

  ];
  final List _filterWarrantyTypeName = [
    'Brand warranty',
    'seller warranty',
    'No warranty',

  ];
  final List _filterWarrantPeriodName = [
    '3 Month',
    '6 Month',
    '1 Year',
  ];
  final List _filterServicesName = [
   'Cash On Delivery',
    'Instaliment',
    'Free Shipping',
  ];
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 55,),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Category',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  // SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 15,left: 15,right: 20),
                        height: 70,
                        child: FilterList(list: _filterICateName)),
                  ),
                  Divider(height: 1,color: Constants.kGreyColor,),
                  // const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Brands',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  // SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                        height: 70,
                        child: FilterList(list: _filterBrandsName)),
                  ),
                  Divider(height: 1,color: Constants.kGreyColor,),

                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Price',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          // padding: const EdgeInsets.all(5),
                          // margin: const EdgeInsets.all(5),
                          // margin: EdgeInsets.all(40),
                          // width: double.infinity,
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(8.0),

                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                          child: const Center(
                            child: Text('120',
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),),
                          ),
                        ),
                        Image.asset('images/icon_minse.png'),
                        Container(
                          height: MediaQuery.of(context).size.height*0.1,
                          // margin: const EdgeInsets.all(5),
                          // padding: const EdgeInsets.all(5),
                          // margin: EdgeInsets.all(40),
                          // width: double.infinity,
                          width: MediaQuery.of(context).size.width*0.35,
                          decoration: BoxDecoration(
                            color: Constants.kGreyLightColor,
                            borderRadius: BorderRadius.circular(8.0),

                            // border: Border.all(
                            //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid),

                          ),
                          child: const Center(
                            child: Text('200',
                              // overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 18),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1,color: Constants.kGreyColor,),

                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Rating',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 15),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        itemSize: 25,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Constants.kStarBlackColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ),
                  Divider(height: 1,color: Constants.kGreyColor,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Materiel',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20,right: 20),
                        height: 70,
                        child: FilterList(list: _filterMaterialName)),
                  ),
                  const Divider(height: 1,color: Constants.kGreyColor,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Location',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20),
                        height: 70,
                        child: FilterList(list: _filterLocationName)),
                  ),
                  const Divider(height: 1,color: Constants.kGreyColor,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Warranty type',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20),
                        height: 70,
                        child: FilterList(list: _filterWarrantyTypeName)),
                  ),
                  const Divider(height: 1,color: Constants.kGreyColor,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Warranty Period',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20),
                        height: 70,
                        child: FilterList(list:_filterWarrantPeriodName )),
                  ),

                  const Divider(height: 1,color: Constants.kGreyColor,),
                  const Padding(
                    padding: EdgeInsets.only(left: 20,top: 15,bottom: 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Services',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nuntio-Bold.ttf'),
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        padding: EdgeInsets.only(bottom: 15,left: 20),
                        height: 70,
                        child: FilterList(list:_filterServicesName )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     SizedBox(width: 120,),
                      FlatButton(
                        color: Constants.kDarkOrangeColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Text(
                          'RESET',
                          style: TextStyle(color: Constants.kWhiteAccent),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        color: Constants.kOrangeColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        child: const Text(
                          'Apply Filter',
                          style: TextStyle(color: Constants.kWhiteAccent),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => BottomNavigate(i: 17,),
                          //   ),
                          // );
                        },
                      ),
                    ],
                  ),




                ],
              ),
            ),
            const TopBarWithoutButton(
              pageName: 'Filter',
            ),
          ],
        ),
      ),
    );
  }
}

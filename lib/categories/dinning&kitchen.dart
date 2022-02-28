
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/featureproduct.dart';
import 'package:crockery_app/widgets/shopswidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';


class DinningKitchenScreen  extends StatefulWidget {
  const DinningKitchenScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< DinningKitchenScreen> {
  final List _allShopName = [
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
  ];

  final List _allShopImg = [
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png',
  ];
  final List _colorBg = [
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50],

  ];
  bool showSearch = false;
  @override
  Widget build(BuildContext context) {
    print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => Home()),
                            );
                          },
                          child: Icon(Icons.arrow_back_ios, color: Color(0xFFAB4D24),)),
                      const Text(
                        'Gift Shop',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      // const SizedBox(
                      //   width: 170,
                      // ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (showSearch == true) {
                              showSearch = false;
                            } else {
                              showSearch = true;
                            }
                            // showSearch ==true;
                          });
                        },
                        child: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      const Icon(
                        Icons.doorbell_outlined,
                        color: Color(0xFFAB4D24),
                      ),
                      const Icon(
                        Icons.shopping_cart,
                        color: Color(0xFFAB4D24),
                      ),
                      //  IconTheme(
                      //   data: new IconThemeData(
                      //       color: Colors.red),
                      //   child: new Icon(Icons.add),
                      // ),
                      //for search
                    ],
                  ),
                ),
              ),

              //for search
              showSearch
                  ? Container(
                height: 40,
                width: 350,
                child: TextFormField(
                  onChanged: (_) {
                    // initiateSearch();
                  },
                  // controller: searchEditingController,
                  decoration: InputDecoration(
                      focusColor: Color(0xFFAB4D24),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFFAB4D24),
                      ),
                      // border: OutlineInputBorder(
                      //   // width: 0.0 produces a thin "hairline" border
                      //
                      //   borderRadius: BorderRadius.all(Radius.circular(90.0)),
                      //   borderSide: BorderSide(color: Color(0xFFAB4D24), width: 2.0),
                      //   // borderSide: BorderSide.none,
                      //   //borderSide: const BorderSide(),
                      // ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFFAB4D24), width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xFFAB4D24), width: 2.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontFamily: "WorkSansLight"),
                      filled: true,
                      fillColor: Colors.white54,
                      hintText: 'Search by name...'),
                ),
              )
                  :  const SizedBox(
                height: 40,
                width: 350,
                child: Text(
                  'Gift Shop products Detail',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              const HorizontalSlider(),
              const Align(alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                  child: Text(
                    'Shops Categories',
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Nuntio-Bold.ttf'),
                  ),
                ),
              ),

              //All Products call here....
              Container(
                height: 110,
                child: GridView.count(
                  // childAspectRatio: 1.0,
                  // crossAxisSpacing: 10.0,
                  // crossAxisSpacing: 20,
                  // mainAxisSpacing: 5,
                  // padding: EdgeInsets.all(10.0),
                  scrollDirection: Axis.vertical,
                  // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  crossAxisCount: 4,
                  children: List.generate(4,(index){

                    return  InkWell(
                      onTap: () {
                        // MaterialPageRoute(builder: (context) => GroceryScreen());
                      },
                      // child: Padding(
                      // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: ShopWidget(image:_allShopImg[index] , title:  _allShopName[index], colour: _colorBg[index],

                      ),
                    );

                  }),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Most Purchased',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Nuntio-Bold.ttf'),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => DealsScreen()),
                        // );
                      },
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: ' View all ',
                                // recognizer: TapGestureRecognizer()..onTap = () => {
                                //   Navigator.push(context, MaterialPageRoute(
                                //       builder: (context) => DealsScreen()),
                                //   )
                                // },
                                style: TextStyle(
                                    color: Color(0xFFAB4D24), fontSize: 15)),
                            WidgetSpan(
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: Color(0xFFAB4D24),
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //   height: MediaQuery.of(context).size.height,
              //   child: GridView.count(
              //     // childAspectRatio: 1.0,
              //     // crossAxisSpacing: 10.0,
              //     // mainAxisSpacing: 5,
              //     // padding: EdgeInsets.all(10.0),
              //     scrollDirection: Axis.vertical,
              //     // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              //     crossAxisCount: 3,
              //     children: List.generate(6,(index){
              //
              //       return  InkWell(
              //         onTap: () {
              //           // MaterialPageRoute(builder: (context) => GroceryScreen());
              //         },
              //         // child: Padding(
              //         // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
              //         child: FeaturedProducts(
              //         ),
              //       );
              //
              //     }),
              //   ),
              // ),
              //

            ],),
        ),
      ),);
  }
}
import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/featureproduct.dart';
import 'package:crockery_app/widgets/shopswidget.dart';
import 'package:flutter/material.dart';

import '../widgets/slider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showSearch = false;
  final List _shopname = [
    'Gift shop',
    'Dining & kitchen',
    'Home Decor',
    'Lighting',
  ];

  final List _shopimg = [
    'images/giftimg.png',
    'images/diningimg.png',
    'images/decorimg.png',
    'images/lightingimg.png'
  ];
  final List _color = [
    Colors.red[50],
    Colors.yellow[50],
    Colors.blue[50],
    Colors.green[50]

  ];
  // final List _featureimg = [
  //   'images/opaldinner.png',
  //   'images/kitchencattle.png',
  //   'images/schoolbottle.png',
  //   'images/opaldinner.png',
  //   'images/kitchencattle.png',
  //   'images/schoolbottle.png'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Home Page"),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      const Text(
                        '03*********',
                        style: TextStyle(
                            color: Color(0xFFAB4D24),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
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
                  : Container(
                      height: 40,
                      width: 350,
                      child: const Center(
                          child: Text(
                        'What do you want to buy?',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )),
                    ),
              const HorizontalSlider(),
              //shop.....
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Shops',
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
              Container(
                color: Colors.white,
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ShopWidget(
                        image: _shopimg[index],
                        title: _shopname[index],
                        colour: _color[index],
                      );
                    }),
              ),
              //featureproduct....
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Featured products',
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
              Container(
                decoration: const BoxDecoration(
                  // border: Border(top: BorderSide(color: Colors.grey, width: 5)),
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(50.0),
                    // topRight: Radius.circular(50.0),
                  ),
                ),

                height: 230,
                width: MediaQuery.of(context).size.width,
                // width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return FeaturedProducts(
                      );
                    }),
              ),
            // Avilable offers..
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Available Offers',
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
              Container(
                decoration: const BoxDecoration(
                  // border: Border(top: BorderSide(color: Colors.grey, width: 5)),
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(50.0),
                    // topRight: Radius.circular(50.0),
                  ),
                ),

                height: 300,
                width: MediaQuery.of(context).size.width,
                // width: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return AvilabelOffers(
                      );
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


import 'package:crockery_app/widgets/avilabeloffers.dart';
import 'package:crockery_app/widgets/mostpurchased.dart';
import 'package:crockery_app/widgets/shopslistwidget.dart';
import 'package:crockery_app/widgets/slider.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../widgets/featureproduct.dart';
import '../widgets/shopwidgets.dart';


class LightingScreen  extends StatefulWidget {
  const LightingScreen({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State< LightingScreen> {
  final List allCatagoriesImg =[
    'images/lightone.png',
    'images/lighttwo.png',
    'images/lighting.png',
    'images/lightthree.png',
    // 'images/giftpic.png',
    // 'images/decorpic.png',
    // 'images/diningkitchen.png',
    // 'images/book.png',
    // 'images/giftpic.png',
    // 'images/decorpic.png',
    // 'images/diningkitchen.png',
    // 'images/book.png',
  ];
  final List allCategoriesName =[
    'Wall lights',
    'Drop Lights',
    'Table Lights',
    'Floor Lighjts',
    // 'Gift Shop',
    // 'dinning&Kitchen',
    // 'Home Decor',
    // 'Lighting',
    // 'Gift Shop',
    // 'dinning&Kitchen',
    // 'Home Decor',
    // 'Lighting',
  ];
  final List mostPurchased =[
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',
    'images/study.png',
    'images/emollient.png',
    'images/gupshuptable.png',

  ];

  bool showSearch = false;
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:  [
              Padding(
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
                      'Lighting',
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

              //for search
              showSearch
                  ? SizedBox(
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
                  'Lighting products Detail',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
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
              Padding(
                padding: EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 420,
                  child: GridView.count(
                    // childAspectRatio: 1.0,
                    crossAxisSpacing: 10.0,
                    // crossAxisSpacing: 20,
                    mainAxisSpacing: 10,
                    physics:  NeverScrollableScrollPhysics(),
                    // padding: EdgeInsets.all(10.0),
                    // scrollDirection: Axis.vertical,
                    // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    crossAxisCount: 2,
                    children: List.generate(4,(index){

                      return  InkWell(
                        onTap: () {
                          // MaterialPageRoute(builder: (context) => GroceryScreen());
                        },
                        // child: Padding(
                        // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: ShopWidget( allCateImg: allCatagoriesImg[index], allCateName: allCategoriesName[index],

                        ),
                      );

                    }),
                  ),
                ),
              ),
              // SizedBox(height: 10,),
              const HorizontalSlider(),


              //Most Purchased....
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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

              Container(
                height: MediaQuery.of(context).size.height,
                child: GridView.count(
                  childAspectRatio: 3/5,
                  crossAxisSpacing: 2.0,
                  // crossAxisSpacing: 20,
                  mainAxisSpacing: 5,
                  physics:  NeverScrollableScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  // padding: EdgeInsets.all(10.0),
                  scrollDirection: Axis.vertical,
                  // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  crossAxisCount: 3,
                  children: List.generate(5,(index){

                    return  InkWell(
                      onTap: () {
                        // MaterialPageRoute(builder: (context) => GroceryScreen());
                      },
                      // child: Padding(
                      // padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child:MostPurchased(mostPurchasedImg: mostPurchased[index],

                      ),
                    );

                  }),
                ),
              ),

            ],),
        ),
      ),);
  }
}
import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../helper/radio_btn_model_size.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/product_list_image_with_color_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State<ProductDetail> with TickerProviderStateMixin {
  // int _currVal = 1;
  // String _currText = '';
  //
  // List<GroupModel> _group = [
  //   GroupModel(
  //     text: "Flutter.dev",
  //     index: 1,
  //   ),
  //   GroupModel(
  //     text: "Inducesmile.com",
  //     index: 2,
  //   ),
  //   GroupModel(
  //     text: "Google.com",
  //     index: 3,
  //   ),
  //   GroupModel(
  //     text: "Yahoo.com",
  //     index: 4,
  //   ),
  // ];
  final List radio_btn_size =[
    'Small',
    'Medium',
    'Large',
    'Extra large',
  ];
  int? selectedRadio;
  bool showPaymentMethod = false;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;



  }

  setSelectedRadioTile(val) {
    setState(() {
      selectedRadio = val;

    });
  }
  String url = 'images/cup.png';
  // int? group1Value;
  // int? group2Value;
  final List allProdImg = [
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
    'images/cupone.png',
    'images/cuptwo.png',
    'images/cupthree.png',
    'images/cupfour.png',
  ];
  final List allProdName = [
    'Grey',
    'Red',
    'Yellow',
    'Brown',
    'Green',
    'Purple',
    'Pink',
    'Orange',
    'Black',
    'Silver',
    'Golden',
  ];

  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
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
                          'Product Detail',
                          style: TextStyle(
                              color: Constants.kBlackColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                  width: 350,
                  child: Text(
                    'Check Product Details',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),
                Container(
                  width: 219.0,
                  height: 219.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.transparent,
                  ),
                  child: FittedBox(
                    child: Image.asset(
                      url,
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  height: 105,
                  width: MediaQuery.of(context).size.width,
                  // width: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              url = allProdImg[index];
                            });
                          },
                          child: ProductListImageAndColor(
                            allProductImg: allProdImg[index],
                            allProdctName: allProdName[index],
                          ),
                        );
                      }),
                ),
                //Radio button for size select of product here....
                // here are required some changes radio size button..
                Container(
                  color: Colors.transparent,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  // width: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          width: 170,
                          child: RadioListTile(
                            value: 3,
                            groupValue: selectedRadio,
                            title: Text(radio_btn_size[index]),
                            // subtitle: Text("Radio 2 Subtitle"),
                            onChanged: (val) {
                              print("Radio Tile pressed $val");
                              setSelectedRadioTile(val);
                            },
                            activeColor: Constants.kDarkOrangeColor,
                            // secondary: Text("Baksh online payment"),
                            selected: false,
                          ),
                        );
                      }),
                ),
                // RadioGroup(),




                Divider(
                  height: 3,
                  color: Constants.kGreyColor,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Nestle Nido Cup for Tea',
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        'Rs 100',
                        style: TextStyle(
                            color: Constants.kDarkOrangeColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10,bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
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
                            ),
                          ),
                          Container(height: 20,
                              width: 20,
                              color: Constants.kDarkOrangeColor,
                              child: Center(child: Text('1',style: TextStyle(color: Constants.kWhiteAccent),))),
                          Container(
                              padding: const EdgeInsets.all(3),
                              margin: const EdgeInsets.only(right: 5,left: 10),
                              height: 20,
                              width: 20,
                              color: Constants.kWhiteAccent,
                              child: Image.asset('images/plus_img.png')),

                        ],
                      ),


                      // Row(
                      //   children: const <Widget>[
                      //     Icon(
                      //       Icons.star,
                      //       color: Constants.kOrangeColor,
                      //     ),
                      //     Icon(
                      //       Icons.star,
                      //       color: Constants.kOrangeColor,
                      //     ),
                      //     Icon(
                      //       Icons.star,
                      //       color: Constants.kOrangeColor,
                      //     ),
                      //     Icon(
                      //       Icons.star,
                      //       color: Constants.kOrangeColor,
                      //     ),
                      //     Icon(
                      //       Icons.star_outline,
                      //       color: Constants.kOrangeColor,
                      //     ),
                      //   ],
                      // ),
                    Align(
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
                          color: Constants.kOrangeColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                      const Padding(padding: EdgeInsets.only(top: 15,bottom: 15),
                        child: Text(
                          'an ornamental trophy in the form of a cup, usually made of gold or silver and having a stem and two handles, '
                          'awarded as a prize in a sports contest.',
                          style: TextStyle(
                              fontFamily: 'Nuntio-Bold.ttf',
                              color: Constants.kLightGreyColor),
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Constants.kGreyColor,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(
                              'Rating & Reviews',
                              style: TextStyle(
                                  color: Constants.kBlackColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Nuntio-Bold.ttf',
                                  fontSize: 15),
                            )),
                      ),
                      Row(
                        children: <Widget>[
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/circleimg.png',
                            ),
                          ),
                          Column(
                            children: const [
                              Text(
                                'Regina Miles',
                                style: TextStyle(
                                    color: Constants.kBlackColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('03/02/2022'),
                            ],
                          ),
                          Spacer(),
                          Align(
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
                                color: Constants.kOrangeColor,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15,bottom: 15),
                        child: Text(
                          'an ornamental trophy in the form of a cup, usually made of gold or silver and having a stem and two handles, '
                          'awarded as a prize in a sports contest.',
                          style: TextStyle(
                              fontFamily: 'Nuntio-Bold.ttf',
                              color: Constants.kLightGreyColor),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'images/cupone.png',
                              height: 60,
                              width: 60,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset(
                              'images/cuptwo.png',
                              height: 60,
                              width: 60,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Constants.kGreyColor,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 35,bottom: 10),
                        height: 86,
                        width: 386,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Color(0xFFE8E8E8),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 20,
                                right: 20,
                                bottom: 10,
                              ),
                              child: Row(
                                children: const <Widget>[
                                  Text(
                                    'Crockery Bazar',
                                    style: TextStyle(
                                        color: Constants.kBlackColor,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Nuntio-Bold.ttf'),
                                  ),
                                  Spacer(),
                                  Text(
                                    '03/03/2022',
                                    style:
                                        TextStyle(color: Constants.kGrey55Color),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: const <Widget>[
                                SizedBox(width: 250,
                                  height: 30,
                                  child: Text(
                                    'Hello Regina,thank you for your valuable feedback',
                                    style: TextStyle(
                                      color: Constants.kGrey55Color,
                                      fontFamily: 'Nuntio-Light.ttf',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 3,
                        color: Constants.kGreyColor,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'You can also check this items',
                            style: TextStyle(
                                fontFamily: 'Nuntio-Bold.ttf',
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        height: 360,
                        width: MediaQuery.of(context).size.width,
                        // width: 150,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return CheckItemsWidget();
                            }),
                      ),
                      // Divider(
                      //   height: 3,
                      //   color: Constants.kGreyColor,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            // foregroundColor: Colors.red,
                            radius: 25,
                            backgroundColor: Constants.kWhiteAccent,
                            child: Container(
                              height: 28,
                              width: 28,
                              // radius: 15,
                              // backgroundColor: Colors.white,
                              // backgroundImage: AssetImage('images/whtsupimg.png'),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                color: Colors.transparent,
                              ),
                              child: FittedBox(
                                child: Image.asset(
                                  'images/whtsupimg.png',
                                ),
                              ),
                            ),
                          ),
                          FlatButton(
                            color: Constants.kOrangeColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(color: Constants.kWhiteAccent),
                            ),
                            onPressed: () {},
                          ),
                          FlatButton(
                            color: Constants.kDarkOrangeColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(color: Constants.kWhiteAccent),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BottomNavigate(i: 17,),
                                ),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

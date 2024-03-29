import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_without_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constant/constant.dart';

import '../helper/radio_btn_model_size.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/product_list_image_with_color_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);


  @override
  _State createState() => _State();
}

class _State extends State<ProductDetail> with TickerProviderStateMixin {
  final List radio_btn_size =[
    'Small',
    'Medium',
    'Large',
    'Extra large',
  ];
  int? selectedRadio;
  int quantity = 1;
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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 75,),
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
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 115,
                              child: RadioListTile(
                                contentPadding: EdgeInsets.zero,
                                value: 3,
                                groupValue: selectedRadio,
                                title: Text(radio_btn_size[index],style: const TextStyle(
                                  fontSize: 12
                                ),),
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




                    const Divider(
                      height: 3,
                      color: Constants.kGreyColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children:  <Widget>[
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 95,
                          child: Material(
                            borderRadius: BorderRadius.circular(5),
                           elevation: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap:(){
                                    setState(() {
                                      if(quantity != 1){
                                        quantity = quantity-1;
                                      }
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(3),
                                    margin: const EdgeInsets.only(right: 5, left: 5),
                                    height: 25,
                                    width: 25,
                                    child:  Image.asset(
                                      'images/minse_img.png',
                                    ),
                                  ),
                                ),
                                Container(height: 25,
                                    width: 25,
                                    color: Constants.kDarkOrangeColor,
                                    child:  Center(child: Text(quantity.toString(),style: TextStyle(color: Constants.kWhiteAccent,fontWeight: FontWeight.bold),))),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      quantity = quantity + 1;
                                    });
                                  },
                                  child: Container(
                                      padding: const EdgeInsets.all(3),
                                      margin: const EdgeInsets.only(right: 5,left: 5),
                                      height: 25,
                                      width: 25,
                                      child: Image.asset('images/plus_img.png')),
                                ),

                              ],
                            ),
                          ),
                        ),

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
                        const Divider(
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
                              radius: 25,
                              backgroundImage: AssetImage(
                                'images/circleimg.png',
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: const [
                                Text(
                                  'Regina Miles',
                                  style: TextStyle(fontSize: 12,
                                      color: Constants.kBlackColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('03/02/2022',
                                    style: TextStyle(fontSize: 12,
                                    color: Constants.kBlackColor,),),
                              ],
                            ),
                            const Spacer(),
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
                        const Divider(
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
                                return const CheckItemsWidget();
                              }),
                        ),
                        // Divider(
                        //   height: 3,
                        //   color: Constants.kGreyColor,
                        // ),
                        SizedBox(height: 80,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 65,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TopBarWithoutButton(pageName: 'Product Detail'),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 60,
                    child: Row(
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
                        MaterialButton(
                          color: Constants.kOrangeColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: const Text(
                            'Buy Now',
                            style: TextStyle(color: Constants.kWhiteAccent),
                          ),
                          onPressed: () {},
                        ),
                        MaterialButton(
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
                                builder: (context) => BottomNavigate(i: 3,),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

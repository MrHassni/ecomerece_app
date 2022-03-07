import 'package:crockery_app/widgets/card_check_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/product_list_image_with_color_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<ProductDetail> with TickerProviderStateMixin {
  String url = 'images/cup.png';
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
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
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
                      Icon(Icons.favorite_border),
                      Icon(Icons.share),
                    ],
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Rs 100',
                          style: TextStyle(
                              color: Constants.kDarkOrangeColor,
                              fontWeight: FontWeight.bold),
                        )),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        Icon(
                          Icons.star_outline,
                          color: Constants.kOrangeColor,
                        ),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: Text(
                        'an ornamental trophy in the form of a cup, usually made of gold or silver and having a stem and two handles, '
                        'awarded as a prize in a sports contest.',
                        style: TextStyle(
                            fontFamily: 'Nuntio-Bold.ttf',
                            color: Constants.kDarkGreyColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Constants.kDarkGreyColor,
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
                        const Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        const Icon(
                          Icons.star,
                          color: Constants.kOrangeColor,
                        ),
                        const Icon(
                          Icons.star_outline,
                          color: Constants.kOrangeColor,
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
                            color: Constants.kDarkGreyColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
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
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Constants.kGreyColor,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 35),
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
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Constants.kDarkGreyColor,
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
                      height: 400,
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
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 20),
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Constants.kGreyColor,
                    ),
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
                          onPressed: () {},
                        ),
                      ],
                    )
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

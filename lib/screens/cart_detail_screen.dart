import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/top_bars/top_bar_with_buttons.dart';
import '../widgets/top_bars/top_bar_without_button.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CartDetail> with TickerProviderStateMixin {
  final List cartDetailImg = [
    'images/teaset.png',
    'images/fruit_frok.png',
    'images/teaset.png',
    'images/fruit_frok.png',
  ];

  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithButtons(showBackButton: false,pageDescription: 'Cart Details',pageName: 'Cart'),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(alignment: Alignment.centerRight,
                        child: Text('Empty Cart Now',style: TextStyle(
                          color: Constants.kDarkOrangeColor,fontFamily: 'Nuntio-Light.ttf',fontWeight: FontWeight.bold
                        ),)),

//Cart here............
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      color: Colors.transparent,
                      height: MediaQuery.of(context).size.height*0.5,
                      width: MediaQuery.of(context).size.width,
                      // width: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return
                              Dismissible(
                                secondaryBackground: Container(
                                    alignment: Alignment.centerRight,
                                    color: Colors.red[100],
                                    child: Icon(Icons.delete,color: Colors.red,),
                                ),
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  color: Colors.green,

                                ),
                                key: ValueKey<String>(cartDetailImg[index]),
                                onDismissed: (DismissDirection direction) {
                                  setState(() {
                                    cartDetailImg.removeAt(index);
                                  });
                                },
                                child:
                                CartDetailsWidget(cartDetial_Img: cartDetailImg[index]),
                            );
                          }),
                    ),
                    InkWell(onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigate(i: 18,),
                        ),
                      );

                    },
                        child: Image.asset('images/apply_coupon_code.png')),
                    // SquarButton(onPressed: () {  }, text: 'Apply Coupon Code',),
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 15,right: 15,bottom: 20),
                      child: SizedBox(height: 150,
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(
                              children: const [
                                Text('Subtotal',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 10,),
                                Text('Total',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            // Spacer(),
                            Column(
                              children: const [
                                Text('200',style: TextStyle(color: Constants.kLightGreyColor),),
                                SizedBox(height: 10,),
                                Text('Rs 240',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      // margin: EdgeInsets.only(top: 40,left: 40,right: 40,bottom: 20),
                      // margin: EdgeInsets.all(40),
                      // width: double.infinity,
                      width: 350,
                      child: FlatButton(
                        child: Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
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
            ],
          ),
        ),
      ),
    );
  }
}

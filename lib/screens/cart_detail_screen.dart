import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/top_bars/top_bar_with_buttons.dart';

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
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                 const SizedBox(height: 85,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child:  Align(alignment: Alignment.centerRight,
                              child: Text('Empty Cart Now',style: TextStyle(
                                color: Constants.kDarkOrangeColor,fontFamily: 'Nuntio-Light.ttf',fontWeight: FontWeight.bold
                              ),)),
                        ),

//Cart here............
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          // width: 150,
                          child: ListView.builder(
                            shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return
                                  Card(
                                    margin: const EdgeInsets.symmetric(vertical: 5),
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Dismissible(
                                      secondaryBackground: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red.shade100,
                                          borderRadius: BorderRadius.circular(0)
                                        ),
                                          alignment: Alignment.centerRight,
                                          child:  Padding(
                                            padding: const EdgeInsets.only(right: 15.0),
                                            child: Image.asset('images/delete_img_red.png',height: 25,width: 25,),
                                          ),
                                      ),
                                      background: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red.shade100,
                                            borderRadius: BorderRadius.circular(0)
                                        ),
                                      ),
                                      direction: DismissDirection.endToStart,
                                      key: ValueKey<String>(cartDetailImg[index]),
                                      onDismissed: (DismissDirection direction) {
                                        setState(() {
                                          cartDetailImg.removeAt(index);
                                        });
                                      },
                                      child:
                                      CartDetailsWidget(cartDetial_Img: cartDetailImg[index]),
                                ),
                                  );
                              }),
                        ),
                        InkWell(onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(i: 10,),
                            ),
                          );

                        },
                            child: Image.asset('images/apply_coupon_code.png')),
                        // SquarButton(onPressed: () {  }, text: 'Apply Coupon Code',),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,bottom: 20),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Subtotal',style: TextStyle(color: Constants.kLightGreyColor),),
                                  SizedBox(height: 10,),
                                  Text('Total',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              // Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text('200',style: TextStyle(color: Constants.kLightGreyColor),),
                                  SizedBox(height: 10,),
                                  Text('Rs 240',style: TextStyle(color: Constants.kBlackColor,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ],
                          ),
                        ),
                          ],
                        ),
                      ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      width: MediaQuery.of(context).size.width,
                      child: MaterialButton(
                        child: const Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        onPressed: () {

                              },

                            color: Constants.kDarkOrangeColor,
                            textColor: Constants.kWhiteAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                  const SizedBox(height: 15,),

                      ],
                    ),
                  ),
            const TopBarWithButtons(showBackButton: false,pageDescription: 'Cart Details',pageName: 'Cart'),
          ],
        ),
          ),
        );
  }
}

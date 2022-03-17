import 'package:crockery_app/widgets/ongoing_product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';
import '../widgets/category_widgets/cutleryitemwidget.dart';
import '../widgets/past_product_widget.dart';

class OrderAccept extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<OrderAccept> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset('images/img_accept.png')),
              const Text(
                'Your Order has been accept',
                style: TextStyle(
                    color: Constants.kBlackColor,
                    fontFamily: 'Nuntio-Bold.ttf',
                    fontSize: 20),
              ),
              const SizedBox(height: 50,
                width: 250,
                child: Text(
                    'your items has been placed and is on its way to being processed',textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Constants.kBlackColor,
                      fontFamily: 'Nuntio-Light.ttf',
                      fontSize: 15),),
              ),
              Container(
                height: 40,
                // margin: EdgeInsets.only(top: 350,),
                // margin: EdgeInsets.all(40),
                // width: double.infinity,
                width: 350,
                child: FlatButton(
                  child: const Text(
                    'View Order',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigate(
                          i: 19,
                        ),
                      ),
                    );
                  },
                  color: Constants.kDarkOrangeColor,
                  textColor: Constants.kWhiteAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Text('Back to home'),
            ],
          ),
        ),
      ),
    );
  }
}

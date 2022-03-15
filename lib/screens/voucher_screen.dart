
import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
import 'package:crockery_app/widgets/top_bars/top_bar_without_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:crockery_app/widgets/buttons/rounded_button.dart';
import '../constant/constant.dart';
import '../widgets/bottom_navigation/bottom_navigation_bar.dart';

class VoucherScreen extends StatefulWidget {
  const VoucherScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<VoucherScreen> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    // print(_allShopImg.length.toString());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBarWithoutButton(pageName: 'Voucher'),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 35,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: TextField(
                              textAlign: TextAlign.center,
                              // textAlignVertical: TextAlignVertical.center,

                              decoration: const InputDecoration(
                                  hintText: 'Enter your Voucher Code',
                                  hintStyle:  TextStyle(fontSize: 13),

                                  border: InputBorder.none),
                              onChanged: (value) {
                                // Do something
                              },
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            // margin: EdgeInsets.only(top: 350,),
                            // margin: EdgeInsets.all(40),
                            // width: double.infinity,
                            child: MaterialButton(
                              child: const Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
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

                    Container(
                      height: 35,
                      margin: const EdgeInsets.only(top: 350,),
                      // margin: EdgeInsets.all(40),
                       width: MediaQuery.of(context).size.width * 0.85,

                      child: MaterialButton(
                        child: const Text('Continue',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavigate(i: 19,),
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

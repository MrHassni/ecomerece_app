
import 'package:crockery_app/widgets/card_check_related_items.dart';
import 'package:crockery_app/widgets/cart_detail_widget.dart';
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
                          'Voucher',
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
                    'Apply your voucher',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 12),
                  ),
                ),
                Container(
                  height: 35,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 35,
                        width: 256,
                        child: TextField(
                          textAlign: TextAlign.center,
                          // textAlignVertical: TextAlignVertical.center,

                          decoration: const InputDecoration(
                              hintText: 'Enter your Voucher Code',
                              contentPadding: EdgeInsets.all(8),
                              border: InputBorder.none),
                          onChanged: (value) {
                            // Do something
                          },
                        ),
                      ),
                      Container(
                        height: 35,
                        // margin: EdgeInsets.only(top: 350,),
                        // margin: EdgeInsets.all(40),
                        // width: double.infinity,
                        width: 92,
                        child: FlatButton(
                          child: Text('Apply',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
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
                  height: 40,
                  margin: EdgeInsets.only(top: 350,),
                  // margin: EdgeInsets.all(40),
                  // width: double.infinity,
                  width: 350,
                  child: FlatButton(
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
        ),
      ),
    );
  }
}

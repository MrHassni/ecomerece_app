import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OngoingProductWidget extends StatefulWidget {
  // const OngoingProductWidget({Key? key}) : super(key: key);
  OngoingProductWidget({required this.orderIdOngoing});
  final String orderIdOngoing;

  @override
  _State createState() => _State();
}

class _State extends State<OngoingProductWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      child: Container(
        height: 90,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //     width: 1, color: Constants.kDarkOrangeColor, style: BorderStyle.solid)
        ),
        child: Padding(
          padding: EdgeInsets.all( 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Constants.kDarkOrangeColor,
                  child: Icon(
                    Icons.shop,
                    color: Constants.kWhiteAccent,
                    size: 20,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text(
                      'Order #${widget.orderIdOngoing}',
                      style: const TextStyle(
                          fontFamily: 'Nuntio-Bold.ttf',
                          fontWeight: FontWeight.bold,
                          color: Constants.kBlackColor),
                    ),
                    const Text('In process',
                      style: TextStyle(
                        fontFamily: 'Nuntio-Light.ttf',
                        color: Constants.kOrangeColor),),
                    const Text('March,8,2022',style: TextStyle(
                        fontFamily: 'Nuntio-Light.ttf',
                        color: Constants.kGraniteGreyColor),),
                  ],
                ),
              ),
              Spacer(),
              const Padding(
                padding: EdgeInsets.only(right: 10,top: 10),
                child: Text('Rs 745',style: TextStyle(
                    fontFamily: 'Nuntio-Light.ttf',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Constants.kOrangeColor),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

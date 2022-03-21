import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  NotificationWidget({required this.orderId});
  final String orderId;

  @override
  _State createState() => _State();
}

class _State extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'Order #${widget.orderId}',
                  style: const TextStyle(
                      fontFamily: 'Nuntio-Bold.ttf',
                      fontWeight: FontWeight.bold,
                      color: Constants.kBlackColor),
                ),
                  SizedBox(
                   width: MediaQuery.of(context).size.width * 0.7,
                   child: const Text('Your order is confirmed.Please check everything is okay',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: 'Nuntio-Light.ttf',
                        color: Constants.kGraniteGreyColor),),
                 ),
              ],),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10,top: 10),
              child: Text('2:45 PM',style: TextStyle(
                  fontFamily: 'Nuntio-Light.ttf',
                  // fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Constants.kGraniteGreyColor),),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartDetailsWidget extends StatefulWidget {
  CartDetailsWidget({required this.cartDetial_Img});
  // const CartDetailsWidget({Key? key}) : super(key: key);
final String cartDetial_Img;
  @override
  _State createState() => _State();
}

class _State extends State<CartDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      height: 110,
      child: Card(
        elevation: 1,
        child: ListTile(contentPadding: const EdgeInsets.all(5),
          //leading: Icon(Icons.music_note),
          title: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10,right: 10, ),
                child: Image.asset(
                  widget.cartDetial_Img,
                  height: 120,
                  width: 90,
                ),
              ),
              SizedBox(width: 10,),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.27,
                    child: const Text(
                      'Tea set',
                      style: TextStyle(
                          color: Constants.kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.centerLeft, child: Text('3x cup', style: TextStyle(color: Constants.kGreyColor,fontSize: 15),)),
                  const Text(
                    'Rs 500',
                    style: TextStyle(color: Constants.kGreyColor,fontSize: 15),
                  ),
                ],
              ),
Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.only(right: 5, left: 10),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      color: Constants.kLightGreenColor,

                        borderRadius: BorderRadius.circular(5.0) ,// use instead of BorderRadius.all(Radius.circular(20))
                    ),

                    child:  Image.asset(
                     'images/minase.png',
                    ),
                  ),
                  Container(
                    height: 20,
                      width: 20,
                      child: Center(child: Text('1',style: TextStyle(fontSize: 16),))),
                  Container(
                      padding: const EdgeInsets.all(3),
                      margin: const EdgeInsets.only(right: 5,left: 10),
                      height: 25,
                      width: 25,

                      decoration: BoxDecoration(
                        color: Constants.kGreenColor,

                        borderRadius: BorderRadius.circular(5.0) ,// use instead of BorderRadius.all(Radius.circular(20))
                      ),
                      child: Image.asset('images/add.png')),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

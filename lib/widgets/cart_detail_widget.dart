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
  int _quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.zero,
      height: 110,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Image.asset(
              widget.cartDetial_Img,
              height: 120,
              width: 90,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
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
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '3x cup',
                    style: TextStyle(color: Constants.kGreyColor, fontSize: 15),
                  )),
              const Text(
                'Rs 500',
                style: TextStyle(color: Constants.kGreyColor, fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    if(_quantity != 1){
                      _quantity = _quantity -1;
                    }
                  });
                },
                child: Image.asset(
                  'images/mines.png',
                  height: 30,
                  width: 30,
                ),
              ),
              SizedBox(
                  height: 30,
                  width: 30,
                  child:  Center(
                      child: Text(
                    _quantity.toString(),
                    style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ))),
              InkWell(
                onTap: (){
                  setState(() {
                    _quantity = _quantity + 1;
                  });
                },
                child: Image.asset(
                  'images/add.png',
                  height: 30,
                  width: 30,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10,)
        ],
      ),
    );
  }
}

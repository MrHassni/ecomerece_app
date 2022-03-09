import 'package:crockery_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckItemsWidget extends StatefulWidget {
  const CheckItemsWidget({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CheckItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Card(
        elevation: 1,
        child: ListTile(
          //leading: Icon(Icons.music_note),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10, ),
                child: Image.asset(
                  'images/itemcup.png',
                  height: 115,
                  width: 121,
                ),
              ),


              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: const Text(
                        'Nestle Nido Cup for tea',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Constants.kBlackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    const Align(
                        alignment: Alignment.centerLeft, child: Text('RS 340')),
                    const Text(
                      'RS 244',
                      style: TextStyle(color: Constants.kDarkOrangeColor),
                    ),
                    Container(
                      height: 25,
                      child: ElevatedButton(
                        onPressed: () {},
                        child:  const Text(
                          'Add to Cart',
                          style: TextStyle(fontSize: 12),
                        ),
                        // icon:  Icon(Icons.shopping_bag_outlined,size: 15,),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Constants.kDarkOrangeColor,
                          ),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: const BorderSide(
                                  color: Constants.kDarkOrangeColor,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),

              Text('200ml'),
            ],
          ),
        ),
      ),
    );
  }
}
